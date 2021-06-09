Subject: Re: Can the Linux kernel reuse the barebox device tree? #kernel
To: yocto@lists.yoctoproject.org
From: florian.kauer@koalo.de
X-Originating-Location: Hamburg, Free and Hanseatic City of Hamburg, DE (88.130.152.204)
X-Originating-Platform: Linux Firefox 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Jun 2021 09:14:26 -0700
References: <CADkTA4NEZ0h7rEiSw4Q0CwLbReoSNkZAuyS=NO0LN-GPf1dKGA@mail.gmail.com>
In-Reply-To: <CADkTA4NEZ0h7rEiSw4Q0CwLbReoSNkZAuyS=NO0LN-GPf1dKGA@mail.gmail.com>
Message-ID: <1487.1623255266856025716@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KCbljxDn5vp8SVN5wGq8"

--KCbljxDn5vp8SVN5wGq8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks a lot for the pointers! I had a deeper look and that is apparently c=
ompletely expected behavior that barebox uses the internal device tree for =
booting the kernel as long as global.bootm.oftree is not set.

So I somehow misconfigured barebox so that global.bootm.oftree was not set=
. I just expected that it fails then and does not silently boot the interna=
l device tree. Entirely my fault, but maybe someone runs into a similar pro=
blem in the future.

Thanks,
Florian

--KCbljxDn5vp8SVN5wGq8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Thanks a lot for the pointers! I had a deeper look and that is apparentl=
y completely expected behavior that barebox uses the internal device tree f=
or booting the kernel as long as global.bootm.oftree is not set.</p>
<p>So I somehow misconfigured barebox so that global.bootm.oftree was not =
set. I just expected that it fails then and does not silently boot the inte=
rnal device tree. Entirely my fault, but maybe someone runs into a similar =
problem in the future.<br /><br />Thanks,<br />Florian</p>

--KCbljxDn5vp8SVN5wGq8--
