Return-Path: <maniacbug@ymail.com>
Received: from nm18-vm4.bullet.mail.ne1.yahoo.com
	(nm18-vm4.bullet.mail.ne1.yahoo.com [98.138.91.178])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id D2CB6E002A9
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 10:07:20 -0700 (PDT)
Received: from [98.138.90.48] by nm18.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Aug 2012 17:07:20 -0000
Received: from [98.138.226.165] by tm1.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Aug 2012 17:07:20 -0000
Received: from [127.0.0.1] by omp1066.mail.ne1.yahoo.com with NNFMP;
	02 Aug 2012 17:07:20 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 134046.23173.bm@omp1066.mail.ne1.yahoo.com
Received: (qmail 31800 invoked by uid 60001); 2 Aug 2012 17:07:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ymail.com; s=s1024;
	t=1343927239; bh=mJ3cngf/Cu3cv/Pn3gMyL0HhG0TU+s/dbZVrRxHl03Q=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=RlEwenvfqYyyrozXfeLdm76u3r07YXJW6CE+R1eVRnxWo09ctg4YEDK8FRNLa2jHKEVtajNVeRtYEx2huoZlf+0g+HcW+5VniysDzcch/wYydzeJDXuHZ5/E9TlZBFgXwt7A4ZdKIbK8kccOi+ef8qNocPHX1dFbo037+eitD78=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=ymail.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=Ir8c82lq/nqQ6xiWgbdd16qFlOWG+VIP5An1lp8KoNlR87dV0owgSl1aSRFnHInasl3ALIwqq/d1wGSfLKp3VijFuDzvDJgyCWwwcopQ114KCi9c8fVqfIRDOmPlHxm4GEkqWZDaDL07K1lP6Ngb7buAFeHxSwYoHOp4GVsL2kc=;
X-YMail-OSG: tBUk_5sVM1mf9MVBS1R28kKpsoK2DLnpwbzR1PQmyf8QzAR
	6Ly2XrsvwHf1.zDFEoRYRHe5rZFSKzct45Z6IS84Or7OuNFBR1S3k1MJ3Xtz
	3mHZuzwCf8kLQAi1YS1IELWFadBS0yskdz2EONQj3nnPV9_nr9VVklnOLjz7
	YpjIRyNrxe2doxRx_8le4PbMJVZ7ZhfE4wgADZUfWK9xhnBAuNsvdnxvR36k
	YfGLbTJDkf.nK5p6BnKBq7Nk8Bf2zKSoOOVw3QjgCAnhucO.W0Ks60SRggJy
	Hx9j.4zdQV_f247x_iuxkarrsIGPaNnoH2ZqqqO.7ZPfaYSow4xPwiA_7WFP
	pc_0uATsrbu3YnAJLDoCFlA1qNvDOlCQwLjtAa9IxP4jH52jnVhpkGIS9XsL
	LV2ZXGRcfTXmpBegoRdsCmutkiCGFqQ--
Received: from [70.99.141.242] by web121603.mail.ne1.yahoo.com via HTTP;
	Thu, 02 Aug 2012 10:07:19 PDT
X-Mailer: YahooMailWebService/0.8.120.356233
Message-ID: <1343927239.27054.YahooMailNeo@web121603.mail.ne1.yahoo.com>
Date: Thu, 2 Aug 2012 10:07:19 -0700 (PDT)
From: maniacbug <maniacbug@ymail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: Re: build error pandaboard on master
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: maniacbug <maniacbug@ymail.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Aug 2012 17:07:21 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

> Got around this issue by checking out the denzil branch on meta-ti and =
=0A> poky.=A0 then my core-image-sato builds and boots.=0A=0A=0ARight, that=
 is what I was going to suggest.=0A=0A=0AOne of us should fix the pulseaudi=
o issue on master and send in a patch.=0A=0A=0A> Anyone know how to get the=
 wireless and HW accelerated video playback to =0A> work with the pandaboar=
d and Yocto? maybe a different image?=0A=0Ameta-ti list is probably going t=
o be the place to find this out. Or at least find clues. Unfortunately, it =
seems that there is not a pandaboard expert in the Yocto house.=0A=0AThe me=
ta-ti layer has been extracted from Angstrom, so there seem to be plenty de=
pendencies directly on OE. Often when building more hardware-specific recip=
ies, these dependencies crop up. So Yocto on Pandaboard is definitely still=
 a work in progress.=0A=0A=0AI have gotten video to work by porting the lib=
av recipe from OE. Happy to send it to you if you want to try. There is no =
evidence to suggest this is hardware-accellerated.=A0 HOWEVER, it does play=
 2Mbps video without stuttering. So from my perspective, whether it's hw ac=
cellerated is not important :)=0A=0AThe downside is that AUDIO is working h=
ardly at all. This is my current challenge, and I'll definitely report prog=
ress to the meta-ti list.=0A

