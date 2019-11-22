Subject: Re: busybox + SELinux (warrior) - reboot issue
To: yocto@lists.yoctoproject.org
From: "Ayoub Zaki" <ayoub.zaki@googlemail.com>
X-Originating-Location: Bochum, North Rhine-Westphalia, DE (93.202.70.91)
X-Originating-Platform: Linux Chrome 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 22 Nov 2019 10:27:53 -0800
References: <f66862da-0037-595f-2dbb-68bda650cded@windriver.com>
In-Reply-To: <f66862da-0037-595f-2dbb-68bda650cded@windriver.com>
Message-ID: <6711.1574447273751295203@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bKfbDavL6Icdfz4wB0sG"

--bKfbDavL6Icdfz4wB0sG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

you should inherit in your image recipe the following bbclass:

inherit selinux-image

It will set the security label of your filesystem using your refpolicy off=
line so it does not need to relabel again.

Best regards

--bKfbDavL6Icdfz4wB0sG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />you should inherit in your image recipe the following bbclas=
s:<br /><br /><em>inherit selinux-image</em><br /><br />It will set the sec=
urity label of your filesystem using your refpolicy offline so it does not =
need to relabel again.<br /><br /><br />Best regards

--bKfbDavL6Icdfz4wB0sG--
