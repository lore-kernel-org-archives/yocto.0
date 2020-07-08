Subject: Add application with library to target
To: yocto@lists.yoctoproject.org
From: "Kjeld Flarup" <kfa@deif.com>
X-Originating-Location: Viborg, Central Jutland, DK (87.54.42.99)
X-Originating-Platform: Linux Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 08 Jul 2020 02:37:18 -0700
Message-ID: <WBxu.1594201038361970285.H0ZY@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="B7p10om3MrNVmdocIxTy"

--B7p10om3MrNVmdocIxTy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a functioning Yocto build today, but two of the recipes are optional=
. An application and a library.
I would like to split my build in two.

One that contains the basic system with kernel rootfs etc.
A second that just contains the application and the library

If I just had the application, it would be simple just to use the SDK and =
generate the application.
But when adding the library, things starts to be more complex.

I would also like to use my existing recipe with dependencies etc.

What is the best approach

* Can this be done with the ADT?
* Can a layer solve it
* Do I need to do it all manually with the SDK

--
Regards
Kjeld Flarup
DEIF A/S

--B7p10om3MrNVmdocIxTy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a functioning Yocto build today, but two of the recipes are optional=
. An application and a library.<br />I would like to split my build in two.=
&nbsp;<br /><br />One that contains the basic system with kernel rootfs etc=
.<br />A second that just contains the application and the library<br /><br=
 />If I just had the application, it would be simple just to use the SDK an=
d generate the application.&nbsp;<br />But when adding the library, things =
starts to be more complex.&nbsp;<br /><br />I would also like to use my exi=
sting recipe with dependencies etc.&nbsp;<br /><br />What is the best appro=
ach<br />
<ul>
<li>Can this be done with the ADT?</li>
<li>Can a layer solve it</li>
<li>Do I need to do it all manually with the SDK</li>
</ul>
<br />--<br />Regards&nbsp;<br />Kjeld Flarup<br />DEIF A/S

--B7p10om3MrNVmdocIxTy--
