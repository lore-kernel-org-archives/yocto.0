Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: from echo.usurf.usu.edu (echo.usurf.usu.edu [129.123.194.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C34D5E01275
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 09:52:49 -0700 (PDT)
Received: from wef.usurf.usu.edu (129.123.194.164) by echo.usurf.usu.edu
	(129.123.194.129) with Microsoft SMTP Server id 14.2.318.4;
	Thu, 18 Oct 2012 10:52:49 -0600
Received: from Mercury.usurf.usu.edu ([172.31.35.10]) by wef.usurf.usu.edu
	with Microsoft SMTPSVC(6.0.3790.4675); Thu, 18 Oct 2012 10:52:44 -0600
Received: from MERCURY.usurf.usu.edu ([172.31.35.10]) by Mercury.usurf.usu.edu
	([172.31.35.10]) with mapi id 14.02.0318.004;
	Thu, 18 Oct 2012 10:52:48 -0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: Mihai Lindner <mihaix.lindner@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "ramana.gollamudi@huawei.com"
	<ramana.gollamudi@huawei.com>
Thread-Topic: [yocto] .bashrc not being used by root account
Thread-Index: Ac2rt7NrZST1ne7WQCqI3BbCR8xoowAd999iABENRQAANyPBCg==
Date: Thu, 18 Oct 2012 16:52:48 +0000
Message-ID: <DDDB9E6645DE24488B8485B41A051F471D965CDB@Mercury.usurf.usu.edu>
References: <DDDB9E6645DE24488B8485B41A051F471D9618D2@Mercury.usurf.usu.edu>
	<36ED13F3654AE54CA763E6821D93A5711047B519@szxeml534-mbx.china.huawei.com>,
	<507E6C5A.1080108@linux.intel.com>
In-Reply-To: <507E6C5A.1080108@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.31.22.105]
MIME-Version: 1.0
X-OriginalArrivalTime: 18 Oct 2012 16:52:44.0147 (UTC)
	FILETIME=[FE71C430:01CDAD50]
Subject: Re: .bashrc not being used by root account
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 18 Oct 2012 16:52:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Okay, I have done a couple of things:=0A=
=0A=
1. I appended to the base-passwd recipe and added my own patch that would p=
atch the passwd file to have root use a bash shell.  I have verified that t=
his is the case when I login via echo $0.  It tells me that root's shell is=
 bash.=0A=
=0A=
2. I have appended to the base-files recipe and added a do_install_append()=
 function to my bbappend file that copies the dot.bashrc to /home/root/.bas=
hrc.  I have verified that this is taking place and the .bashrc file is act=
ually in /home/root.=0A=
=0A=
3. I ran 'strace -f bash' after logging in and /home/root/.bashrc is source=
d (I saw it in the output and my aliases were available).=0A=
=0A=
However, upon first login, it appears that /home/root/.bashrc is NOT source=
d by bash.  How can I get bash to source that file when I login at a consol=
e?=0A=
=0A=
Thanks for the help!=0A=
Jonathan=0A=
=0A=
=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of Mihai Lindner [mihaix.lindner@linux.intel.com]=0A=
Sent: Wednesday, October 17, 2012 02:29=0A=
To: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] .bashrc not being used by root account=0A=
=0A=
On 10/17/2012 09:25 AM, Venkata ramana gollamudi wrote:=0A=
> You can check the same with  "strace -f bash"=0A=
> You can see the files being loaded, as there is a rc file loading sequenc=
e exists for bash.=0A=
>=0A=
> Regards,=0A=
> Ramana=0A=
>=0A=
> ________________________________________=0A=
> From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on =
behalf of Jonathan Haws [Jonathan.Haws@sdl.usu.edu]=0A=
> Sent: Tuesday, October 16, 2012 9:32 PM=0A=
> To: yocto@yoctoproject.org=0A=
> Subject: [yocto] .bashrc not being used by root account=0A=
>=0A=
> I have modified the .bashrc file for the system, however the root account=
 does not seem to use it by default.  What am I missing?  I would rather no=
t have to source the .bashrc file every time I login as root.=0A=
=0A=
Try `echo $0` to see the shell you're in. By default you should be in=0A=
`sh`, which does not source .bashrc.=0A=
You can execute `bash` after login, or change the login shell of 'root'.=0A=
=0A=
Cheers,=0A=
--Mihai=0A=
=0A=
>=0A=
> Thanks,=0A=
> Jonathan=0A=
>=0A=
> _______________________________________________=0A=
> yocto mailing list=0A=
> yocto@yoctoproject.org=0A=
> https://lists.yoctoproject.org/listinfo/yocto=0A=
> _______________________________________________=0A=
> yocto mailing list=0A=
> yocto@yoctoproject.org=0A=
> https://lists.yoctoproject.org/listinfo/yocto=0A=
>=0A=
=0A=
=0A=
--=0A=
Mihai Lindner=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

