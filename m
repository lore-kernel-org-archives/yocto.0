Return-Path: <petertornel@yahoo.com>
Received: from nm27-vm1.bullet.mail.ne1.yahoo.com
	(nm27-vm1.bullet.mail.ne1.yahoo.com [98.138.90.59])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id DB72BE0059A
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 17:10:49 -0700 (PDT)
Received: from [98.138.90.56] by nm27.bullet.mail.ne1.yahoo.com with NNFMP;
	13 Apr 2012 00:10:49 -0000
Received: from [98.138.88.237] by tm9.bullet.mail.ne1.yahoo.com with NNFMP;
	13 Apr 2012 00:10:49 -0000
Received: from [127.0.0.1] by omp1037.mail.ne1.yahoo.com with NNFMP;
	13 Apr 2012 00:10:49 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 332592.57408.bm@omp1037.mail.ne1.yahoo.com
Received: (qmail 47951 invoked by uid 60001); 13 Apr 2012 00:10:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1334275849; bh=5buPOvLQnL2LnjpOB90sJYainV8Wv2Aiovh0yN3cPRU=;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=KDfSfhr+c55+U4hVCN+G9avd5Ni1WmaAK5TlGn0Q/Z2WhT510382ClSyqbhW/+xVbFlvO5PXRI65u8K42qwOcmqK2djL2M5VLMIhUROpIyZKYQS1IucbfnnJE09r0cSKFuEsVs6z2q842Ug0RxA43Wj0QT5cdssNexAX783Llw0=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=ORGzjLS+/dwRYS5A2i4l+rKbiL9aegffBjtYgW3wyAR2s4Cgqb7SQiVb18CVjqcvbkT49VXmdVtlhKeN/4cGnNn4YCfgDrMUHwiEKxFGRD6NQPoajtYjNNWCcjTprO+U0kl7M6nQuTixyGDX3GhgcFa4tLG8ZMW53MEy8e3HW48=;
X-YMail-OSG: cEoJbd4VM1nFZLBRUtX8mA8BWy9_DlIpj8t26DLmdh4u2Or
	lTLfPxZ0uOsbxUH2ba9jwvyexddXYsTYf1tzL5yE0fU1PJQT8UTJk.fWB3wq
	rN2t124xeLCBWU1c8fUgnL31q2XNz7NqAjiO5Sayk.3_QBomM8NGT7HGCaA1
	yGA0W2DT2VWPG5xZKyfnuLBSxWr141N6u8A3VR8uJFg8BEbOvdXyZLO3oglR
	x0Cxk0EpMldsZxwwec733xUz1R.t_Y.b3XhCxcBx1IT8IVzH.3.jPOo1Mv1Q
	0h3Pu.j46KgiqAHm31NyRCD2jQVg5ILe62GXkyjA2LvkMdWI7BpDLPwxZyvC
	Ly7usu_39SKMmXJDPiTTdbXc3WrHXBGgliV0BZ1AGNZR4wQufWtdtNJhKxw_
	49XJ_9mL.cTseUcCq34EttxY-
Received: from [108.11.41.42] by web122203.mail.ne1.yahoo.com via HTTP;
	Thu, 12 Apr 2012 17:10:49 PDT
X-Mailer: YahooMailWebService/0.8.117.340979
References: <1334167325.15462.YahooMailNeo@web122203.mail.ne1.yahoo.com>
	<4F868123.9010902@linux.intel.com>
Message-ID: <1334275849.46498.YahooMailNeo@web122203.mail.ne1.yahoo.com>
Date: Thu, 12 Apr 2012 17:10:49 -0700 (PDT)
From: Peter Tornel <petertornel@yahoo.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4F868123.9010902@linux.intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: confusion about IMAGE_INSTALL and getting packages into rootfs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Peter Tornel <petertornel@yahoo.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Apr 2012 00:10:50 -0000
Content-Type: multipart/alternative;
	boundary="1629896970-1202608122-1334275849=:46498"

--1629896970-1202608122-1334275849=:46498
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

"Keep in mind that you should be using package names here, not recipe names=
."=0A=0A=0AThank you for the reply Darren.=A0 I'm not sure I understand the=
 difference yet, but I'm working on it.=A0 

--1629896970-1202608122-1334275849=:46498
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div>"Keep in mind th=
at you should be using package names here, not recipe names."</div><div><br=
></div><div><br></div><div>Thank you for the reply Darren.&nbsp; I'm not su=
re I understand the difference yet, but I'm working on it.&nbsp; <br></div>=
<div><br></div><br> <div style=3D"font-family: times new roman, new york, t=
imes, serif; font-size: 12pt;"> </div>  </div></body></html>

--1629896970-1202608122-1334275849=:46498--
