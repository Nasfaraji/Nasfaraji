import React from "react"; import { Button } from "@/components/ui/button"; import { Card, CardContent } from "@/components/ui/card";

export default function Home() { return ( <main className="min-h-screen bg-gradient-to-b from-blue-100 to-white text-gray-800 p-6"> <section className="text-center mb-12"> <h1 className="text-4xl font-bold text-blue-600">Bluamira</h1> <p className="mt-2 text-lg text-blue-800 italic">Where elegance meets emotion</p> </section>

<section className="grid grid-cols-1 md:grid-cols-3 gap-6">
    <Card className="rounded-2xl shadow-md">
      <CardContent className="p-4">
        <img src="/bluamira.png" alt="Bluamira Original" className="w-full h-48 object-cover rounded-xl mb-4" />
        <h2 className="text-xl font-semibold">Bluamira Original</h2>
        <p className="text-sm text-gray-600">Floral, dreamy and airy – inspired by wild rose and the sky</p>
        <Button className="mt-4 w-full bg-blue-400 hover:bg-blue-500">Shop Now</Button>
      </CardContent>
    </Card>

    <Card className="rounded-2xl shadow-md">
      <CardContent className="p-4">
        <img src="/moonveil.png" alt="Moon Veil" className="w-full h-48 object-cover rounded-xl mb-4" />
        <h2 className="text-xl font-semibold">Moon Veil</h2>
        <p className="text-sm text-gray-600">Sensual and deep, with sweet amber and vanilla</p>
        <Button className="mt-4 w-full bg-pink-300 hover:bg-pink-400">Shop Now</Button>
      </CardContent>
    </Card>

    <Card className="rounded-2xl shadow-md">
      <CardContent className="p-4">
        <img src="/azure.png" alt="Azure Dream" className="w-full h-48 object-cover rounded-xl mb-4" />
        <h2 className="text-xl font-semibold">Azure Dream</h2>
        <p className="text-sm text-gray-600">Cool, rainy and floral – the scent of clouded sky</p>
        <Button className="mt-4 w-full bg-blue-300 hover:bg-blue-400">Shop Now</Button>
      </CardContent>
    </Card>
  </section>
</main>

); }

