Return-Path: <J.Spriggs@raylase.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34D7EE009CA; Sat,  9 May 2015 03:18:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.raylase.de (mail.raylase.de [217.6.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F333E00945
	for <yocto@yoctoproject.org>; Sat,  9 May 2015 03:18:49 -0700 (PDT)
Received: from mail.raylase.de (127.0.0.1) id h9nfgm0171st for
	<yocto@yoctoproject.org>;
	Sat, 9 May 2015 12:18:48 +0200 (envelope-from <J.Spriggs@raylase.de>)
Received: from EXCHANGE-A.raylase.de ([192.168.1.16])
	by mail.raylase.de (RAYLASE AG)
	with ESMTPS (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256/256)
	id 201505091018450088667; Sat, 09 May 2015 12:18:45 +0200
Received: from EXCHANGE-B.raylase.de (192.168.2.12) by EXCHANGE-A.raylase.de
	(192.168.1.16) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Sat, 9 May 2015 12:18:44 +0200
Received: from EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49]) by
	EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49%14]) with mapi id
	14.03.0224.002; Sat, 9 May 2015 12:18:42 +0200
From: "Spriggs, Jim" <J.Spriggs@raylase.de>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Need advice on tracking down "-dirty"
Thread-Index: AdCJbJrG4VCM0mIGQamQT84Gxmu17AAGw4QAAC165Aw=
Date: Sat, 9 May 2015 10:18:42 +0000
Message-ID: <2238EDC6081C944E97E4EE915AE5CBEC521EC2A0@EXCHANGE-B.raylase.de>
References: <2238EDC6081C944E97E4EE915AE5CBEC521E9F19@EXCHANGE-B.raylase.de>,
	<554CC34E.9070904@windriver.com>
In-Reply-To: <554CC34E.9070904@windriver.com>
Accept-Language: en-GB, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.255.1]
MIME-Version: 1.0
X-Mlf-Version: 8.0.7.3275
X-Mlf-UniqueId: o201505091018450088667
Cc: "Wilfert, Dennis" <D.Wilfert.extern@raylase.de>, "Weber,
	Markus" <M.Weber@raylase.de>
Subject: Re: Need advice on tracking down "-dirty"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 09 May 2015 10:18:54 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Bruce, List

@Bruce: many thanks indeed for your prompt reply and very helpful clue!

It turns out "-dirty" has nothing directly to do with my own recipe at all.

It appears as soon as I specify 'KERNEL_PROVIDER =3D "linux-altera"' in loc=
al.conf, instead of allowing the meta-altera layer's default (which is "lin=
ux-altera-ltsi") to go through.
"linux-altera" currently pulls in kernel version 3.15, whereas "linux-alter=
a-ltsi" pulls in 3.10.

I'm using "git clone https://github.com/kraj/meta-altera" to get the altera=
 layer.

Can anyone suggest why 3.15 should (apparently) be "dirty" straight out of =
the repo?
Is this actually expected behaviour?
Alternatively, what it is that I'm failing to understand about the whole yo=
cto/bitbake mechanism?

Many thanks for your collective patience....
--
jim
________________________________________
From: Bruce Ashfield [bruce.ashfield@windriver.com]
Sent: 08 May 2015 16:08
To: Spriggs, Jim; yocto@yoctoproject.org
Cc: Wilfert, Dennis; Weber, Markus
Subject: Re: [yocto] Need advice on tracking down "-dirty"

On 2015-05-08 5:36 AM, Spriggs, Jim wrote:
> Hi Guys,
>
> Using poky dizzy with meta-altera (from OE), and trying to implement a si=
mple loadable kernel-module by following the method outlined  in Lab3 of  h=
ttps://www.yoctoproject.org/sites/default/files/kernel-lab-1.6.pdf.
>
> I'm doing an "rm -rf tmp" before starting "bitbake virtual/kernel  my-ima=
ge-recipe".
>
> The build seems to work just fine: the kernel-module-xxxx-1.0-r0.machine.=
rpm appears as expected under .../deploy/...
>
> The package installation task fails, however, with:
>
>      error: Can't install kernel-module-xxxx-1.0-r0@machine : no package =
provides kernel-3.15.0-00184-g5ae31a7
>
> and indeed, the kernel packages available in .../deploy/... are:
>
>      kernel-3.15-r1.machine.rpm
>      kernel-3.15.0-00184-g5ae31a7-dirty-3.15-r1.machine.rpm
>      kernel-dev-3.15-r1.machine.rpm
>      kernel-image-3.15.0-00184-g5ae31a7-dirty-3.15-r1.machine.rpm
>
>
> Yet "git status" reports "nothing to commit, w.d. clean" for both the mai=
n poky tree and the meta-altera sub-tree.

By this, do you mean the kernel source tree ? Or the layers ?

I haven't looked at the kernel recipe you are using, but PV
and the git hash you have in those package names is coming from
the kernel source directory.

It is there that you'll likely find un-commited changes, and what
is triggering the -dirty flag to be captured.

Bruce

>
> So I guess the n00b needs a clue about how to find out why and where the =
dirty-flag is getting set?
>
> Thanks for listening!
> --
> jim spriggs
>
> PS: the real names of module and machine have been redacted above to prot=
ect the guilty...
> PPS: sorry about the company sig., I can't switch it off.
>
>
> ________________________________
>
> RAYLASE AG
> Argelsrieder Feld 2+4
> 82234 Wessling
> Germany
> Tel.: +49-(0)8153/88 98-0
> Fax: +49-(0)8153/88 98-10
> http://www.raylase.de
>
> District Court Munich, HRB 131450
>
> Board: Peter von Jan (CEO)
>
> Supervisory Board: Dr. Ulrich Lohmann (Chairman)
>
>
> Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Infor=
mationen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=
=FCmlich erhalten haben, informieren Sie bitte sofort den Absender und vern=
ichten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte Weiterga=
be dieser Mail ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If yo=
u are not the intended recipient (or have received this e-mail in error) pl=
ease notify the sender immediately and destroy this e-mail. Any unauthorize=
d copying, disclosure or distribution of the material in this e-mail is str=
ictly forbidden.
>


________________________________

RAYLASE AG
Argelsrieder Feld 2+4
82234 Wessling
Germany
Tel.: +49-(0)8153/88 98-0
Fax: +49-(0)8153/88 98-10
http://www.raylase.de

District Court Munich, HRB 131450

Board: Peter von Jan (CEO)

Supervisory Board: Dr. Ulrich Lohmann (Chairman)


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FC=
mlich erhalten haben, informieren Sie bitte sofort den Absender und vernich=
ten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte Weitergabe =
dieser Mail ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =
are not the intended recipient (or have received this e-mail in error) plea=
se notify the sender immediately and destroy this e-mail. Any unauthorized =
copying, disclosure or distribution of the material in this e-mail is stric=
tly forbidden.

