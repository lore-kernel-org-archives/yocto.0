Return-Path: <nathan.rossi@xilinx.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe003.messaging.microsoft.com [216.32.181.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6096E0077B;
	Sun,  1 Dec 2013 16:54:24 -0800 (PST)
Received: from mail46-ch1-R.bigfish.com (10.43.68.241) by
	CH1EHSOBE015.bigfish.com (10.43.70.65) with Microsoft SMTP Server id
	14.1.225.22; Mon, 2 Dec 2013 00:54:22 +0000
Received: from mail46-ch1 (localhost [127.0.0.1])	by mail46-ch1-R.bigfish.com
	(Postfix) with ESMTP id 658F660541;
	Mon,  2 Dec 2013 00:54:22 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:149.199.60.83; KIP:(null); UIP:(null); IPV:NLI;
	H:xsj-gw1; RD:unknown-60-83.xilinx.com; EFVD:NLI
X-SpamScore: -4
X-BigFish: VPS-4(zz98dI9371I542I1432I4015Izz1f42h2148h208ch1ee6h1de0h1fdah2073h2146h1202h1e76h1d1ah1d2ah1fc6hzz1de098h17326ah8275bh8275dh1de097h186068hz2fh95h109h839h944hd24hf0ah119dh1220h1288h12a5h12a9h12bdh137ah13b6h1441h14ddh1504h1537h153bh162dh1631h1758h18e1h1946h19b5h1b0ah224fh1d0ch1d2eh1d3fh1dfeh1dffh1e1dh1fe8h1ff5h2216h2336h906i1155h)
Received-SPF: pass (mail46-ch1: domain of xilinx.com designates 149.199.60.83
	as permitted sender) client-ip=149.199.60.83;
	envelope-from=nathan.rossi@xilinx.com; helo=xsj-gw1 ;
	helo=xsj-gw1 ; 
Received: from mail46-ch1 (localhost.localdomain [127.0.0.1]) by mail46-ch1
	(MessageSwitch) id 138594566119276_16932;
	Mon,  2 Dec 2013 00:54:21 +0000 (UTC)
Received: from CH1EHSMHS010.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.234])	by mail46-ch1.bigfish.com (Postfix) with ESMTP id
	00B8C4E007F;	Mon,  2 Dec 2013 00:54:21 +0000 (UTC)
Received: from xsj-gw1 (149.199.60.83) by CH1EHSMHS010.bigfish.com
	(10.43.70.10) with Microsoft SMTP Server id 14.16.227.3; Mon, 2 Dec 2013
	00:54:20 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-smtp1)	by
	xsj-gw1 with esmtp (Exim 4.63)	(envelope-from
	<nathan.rossi@xilinx.com>)	id
	1VnHmG-0007am-Jj; Sun, 01 Dec 2013 16:54:20 -0800
From: Nathan Rossi <nathan.rossi@xilinx.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Thread-Topic: [yocto] Patch failure with bbappends
Thread-Index: Ac7sAujPcJEqXWVFSBSo7r4WFhYObP//lE8A//mpgtA=
Date: Mon, 2 Dec 2013 00:54:18 +0000
References: <b9a38e41-8736-4efe-8d5d-895e34fae5a3@VA3EHSMHS020.ehs.local>
	<CAP71Wjyirm30Hpe-jZ99P=FKm3uWCgQTqg=RPqnOYFeGYAPREw@mail.gmail.com>
In-Reply-To: <CAP71Wjyirm30Hpe-jZ99P=FKm3uWCgQTqg=RPqnOYFeGYAPREw@mail.gmail.com>
Accept-Language: en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.164.13]
MIME-Version: 1.0
X-RCIS-Action: ALLOW
Message-ID: <7cba2bfa-6b4f-45d8-b845-ac4d517c6899@CH1EHSMHS010.ehs.local>
X-OriginatorOrg: xilinx.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "meta-xilinx Mailing
	List \(meta-xilinx@yoctoproject.org\)" <meta-xilinx@yoctoproject.org>
Subject: Re: Patch failure with bbappends
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
X-List-Received-Date: Mon, 02 Dec 2013 00:54:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Nicolas,

You were indeed correct with the string comparison being at fault, it shoul=
d be doing a '=3D=3D' instead of 'in'.

I have already submitted the patch to bitbake, and it appears to have alrea=
dy been accepted, and also has trickled down to Poky.

http://lists.openembedded.org/pipermail/bitbake-devel/2013-November/004170.=
html
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Df91a3f46a1ee586=
e330be0868e8fbc4d2e78d361

Thanks,
Nathan

> -----Original Message-----
> From: Nicolas Dechesne [mailto:nicolas.dechesne@linaro.org]
> Sent: Thursday, November 28, 2013 6:02 PM
> To: Nathan Rossi
> Cc: yocto@yoctoproject.org; meta-xilinx Mailing List (meta-
> xilinx@yoctoproject.org)
> Subject: Re: [yocto] Patch failure with bbappends
> =

> =

> On Thu, Nov 28, 2013 at 8:10 AM, Nathan Rossi <nathan.rossi@xilinx.com>
> wrote:
> =

> =

> 	Reverting this commit on the top of master results in a functional
> build. I've done some 'bitbake -e' scanning with and without the above
> commit, and I cannot see any differences between the variables that are
> changed in the meta-xilinx .bbappends files. So it does not appear to be =
a
> problem in non-inclusion of the bbappend files, and the ordering of the
> inclusion appears to be correct as well.
> =

> 	Before I dive any deeper into the bitbake change itself I was hoping
> someone might have seen this issue previously or has some insight.
> =

> =

> =

> just a wild guess... but could it be because gcc-cross and gcc-cross-
> initial both start with 'gcc-cross', hence the regexp in this new commit
> is catching them twice? i am referring to this:
> =

> -        if f in self.appendlist:
> -            return self.appendlist[f]
> -        return []
> +        for bbappend in self.appendlist:
> +            if bbappend in f or ('%' in bbappend and
> bbappend.startswith(f[:bbappend.index('%')])):
> +                self.appliedappendlist.append(bbappend)
> +                for filename in self.appendlist[bbappend]:
> +                    filelist.append(filename)



