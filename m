Return-Path: <emirelkholy@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD3A7E01304
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 13:37:37 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so5629158qcs.35
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 13:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to;
	bh=+4UNj43VuJqVxlEKhjaLETYsP2BQttHZjln63lWCafA=;
	b=zt/uC3szPELRiu4Vz3B0BiVKMQTJpKc3mqufedlH8S8v/TOFQPzDcOk5ECjHWU5opW
	1JjJ4GSU3OLfcsRi+Lr+BbdOKjW7HsKEbAw6aw8OF2grNfjxCJmYgVsGKmVXhpp46Ota
	fDQA+lsXe4WsAV8olxTnzRFlMdMT2mSXJibvV3nRkBfpnCSjfgsDSuYWQHJPmNTVMKGp
	QC0lqg9B6jgwhXLLuFl+wEYOUrDj/wL9rztCnrAmeObb2T8hkxm0O4Mu1zwjKS2tmHoD
	gcRHM+MBKul/1tgqGIhpwv5jYMgDcSkDgKySLUa+b1LV6SiDi8WN7AKC7rvuVC7Bkpqf
	Nkbg==
Received: by 10.224.168.84 with SMTP id t20mr1684185qay.2.1337719056933;
	Tue, 22 May 2012 13:37:36 -0700 (PDT)
Received: from [21.43.255.14] (66-87-87-14.pools.spcsdns.net. [66.87.87.14])
	by mx.google.com with ESMTPS id cp17sm47426800qab.5.2012.05.22.13.37.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 22 May 2012 13:37:36 -0700 (PDT)
References: <CAExZvuNa59NhtL767y9fD-A05rZkpYdp+55N-zHWn2kJeEU_Fw@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46A4CAFC@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46A4CAFC@ORSMSX101.amr.corp.intel.com>
Mime-Version: 1.0 (1.0)
Message-Id: <91072D03-738A-4BC9-803F-0803A2D88171@gmail.com>
X-Mailer: iPhone Mail (9B206)
From: emirelkholy@gmail.com
Date: Tue, 22 May 2012 16:37:29 -0400
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Connecting to target using eclipse/ADT
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
X-List-Received-Date: Tue, 22 May 2012 20:37:38 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hello,
I can ping my target with no problem, and when I tried to debug a hello worl=
d program it transferred the hello world file the target. The connection jus=
t timed out so I was unable to debug through eclipse. How can I check to ver=
ify the tcf agent is running on thr target? Do you have instructions?

Thanks,
Emir



On May 22, 2012, at 4:23 PM, "Zhang, Jessica" <jessica.zhang@intel.com> wrot=
e:

> So do you have access to your target at all? Can you verify that the tcf-a=
gent is up running on the target device?
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.or=
g] On Behalf Of Emir Elkholy
> Sent: Tuesday, May 22, 2012 11:58 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] Connecting to target using eclipse/ADT
>=20
> When connecting to my CRB that is running off a usb drive that has yocto o=
n it I am trying to connect to the CRB from my host in order to debug using T=
CF agent. Through eclipse I am entering the IP address of the target, and at=
tempting to debug from the debug configurations menu. Using a simple hellowo=
rld as an example, the file is actually transferred to the target CRB, but t=
he debugging fails. Eclipse gives me a connection timing out error (not allo=
wing me to debug). Is there a link that describes how to connect to a physic=
al target using eclipse and the ADT? Is there anything that must be done on t=
he target side first before attempting to debug? I only enter the IP address=
 of the target under debug configurations, I don't setup anything on the tar=
get side, maybe this is the problem? I followed the same procedure as connec=
ting to the QEMU (which works) as I did with the physical hardware. I can't f=
ind anything online about a connection time out either.
>=20
> Thanks
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

