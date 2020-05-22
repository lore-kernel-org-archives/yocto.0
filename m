Subject: Re: strange formatting of command output on core-image-base
To: yocto@lists.yoctoproject.org
From: stefan.wenninger@evopro-ag.de
X-Originating-Location: Regensburg, Bavaria, DE (88.133.236.129)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 22 May 2020 05:33:28 -0700
References: <dff0a65c-e27b-4077-933f-cbbed892e2f1@gmail.com>
In-Reply-To: <dff0a65c-e27b-4077-933f-cbbed892e2f1@gmail.com>
Message-ID: <23538.1590150808780202629@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="miJv0akg2Kg6Eb9T9l1c"

--miJv0akg2Kg6Eb9T9l1c
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Raj,

you seem to have been spot on. After adding the "packagegroup-core-full-cm=
dline" to my image all command output looks perfect.
This packagegroup was the only relevant difference between core-image-base=
 and core-image-full-cmdline imo. Some package out of this group did the tr=
ick.

Thank you very much, I consider this topic closed.

Stefan Wenninger

--miJv0akg2Kg6Eb9T9l1c
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Raj,<br /><br />you seem to have been spot on. After adding the "package=
group-core-full-cmdline" to my image all command output looks perfect.<br /=
>This packagegroup was the only relevant difference between core-image-base=
 and core-image-full-cmdline imo. Some package out of this group did the tr=
ick.<br /><br />Thank you very much, I consider this topic closed.<br /><br=
 />Stefan Wenninger

--miJv0akg2Kg6Eb9T9l1c--
