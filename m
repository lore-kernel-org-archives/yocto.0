Subject: Re: How to install rrdtool-per package?
To: yocto@lists.yoctoproject.org
From: ingemar0720@gmail.com
X-Originating-Location: Singapore, SG (116.86.81.64)
X-Originating-Platform: Mac Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Jul 2020 08:27:19 -0700
References: <20200701143038.bxz7gbufzbdc6gsb@qschulz>
In-Reply-To: <20200701143038.bxz7gbufzbdc6gsb@qschulz>
Message-ID: <29203.1593617239911633287@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WqEvJwa8aTQjfXiEzaif"

--WqEvJwa8aTQjfXiEzaif
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin
I've execute command "bitbake rrdtool -e" to checked the result and find i=
t's been set as I expected.

This rrdtool-perl is actually required by "rpimonitor", if I execute comma=
nd "bitbake rpimonitor" and it would success.
But when I execute command "bitbake mydistro ", it always say "nothing pro=
vides rrdtool-perl" at "do_rootfs" stage.

Is there any other suggestion?

--WqEvJwa8aTQjfXiEzaif
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Quentin<br />I've execute command "bitbake rrdtool -e" to checked the=
 result and find it's been set as I expected.</p>
<p>This rrdtool-perl is actually required by "rpimonitor", if I execute co=
mmand "bitbake rpimonitor" and it would success.<br />But when I execute co=
mmand "bitbake <em>mydistro</em>", it always say "nothing provides rrdtool-=
perl" at "do_rootfs" stage.&nbsp;</p>
<p>Is there any other suggestion?</p>
<p>&nbsp;</p>

--WqEvJwa8aTQjfXiEzaif--
