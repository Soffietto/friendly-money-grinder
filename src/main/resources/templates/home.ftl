<#list products as p>
    <div>
        <img src="${p.imgUrl}">
        <a href="/single/${p.id}">Name: ${p.name}</a>
        <p>Cost: ${p.cost}</p>
        <a href="${p.url}">Buy!</a>
    </div>
<hr>
</#list>

<a href="account.ftl">Account</a>
<a href="checkout.ftl">Checkout</a>
<a href="contact.ftl">Contact</a>
<a href="index.ftl">Index</a>
<a href="products.ftl">Products</a>
<a href="register.ftl">Register</a>
<a href="single.ftl">Single</a>
<a href="typo.ftl">Typo</a>