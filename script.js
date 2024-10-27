function GenerateParticle()
{
    const container = document.getElementById('controlAddIn');
    const particles = [];

    // Function to create particles
    function createParticle(x, y) {
        const particle = document.createElement('div');
        particle.classList.add('particle');
        particle.style.left = `${x}px`;
        particle.style.top = `${y}px`;

        // Randomize speed and direction of the float animation
        particle.style.animationDuration = `${Math.random() * 3 + 2}s`;
        particle.style.transform = `scale(${Math.random() + 0.5})`;

        container.appendChild(particle);

        // Remove particle after animation
        setTimeout(() => {
        particle.remove();
        }, 5000);
    }

    // Create particles periodically
    setInterval(() => {
        const x = Math.random() * window.innerWidth;
        const y = Math.random() * window.innerHeight;
        createParticle(x, y);
    }, 200);

    // Interactive mouse particle effect
    container.addEventListener('mousemove', (e) => {
        const x = e.clientX;
        const y = e.clientY;
        for (let i = 0; i < 5; i++) { // Create 5 particles per mouse move
        createParticle(x + Math.random() * 30 - 15, y + Math.random() * 30 - 15);
        }
    });
}