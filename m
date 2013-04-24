Return-Path: <Michael.Fainstein@ecitele.com>
Received: from mail1.bemta3.messagelabs.com (mail1.bemta3.messagelabs.com
	[195.245.230.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7206FE01515
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 05:02:15 -0700 (PDT)
Received: from [85.158.138.51:53852] by server-11.bemta-3.messagelabs.com id
	72/F6-01263-7B9C7715; Wed, 24 Apr 2013 12:01:59 +0000
X-Env-Sender: Michael.Fainstein@ecitele.com
X-Msg-Ref: server-10.tower-174.messagelabs.com!1366804858!25700060!1
X-Originating-IP: [147.234.242.234]
X-StarScan-Received: 
X-StarScan-Version: 6.8.6.1; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 16764 invoked from network); 24 Apr 2013 12:00:59 -0000
Received: from ilptbmg01-out.ecitele.com (HELO ilptbmg01-out.ecitele.com)
	(147.234.242.234)
	by server-10.tower-174.messagelabs.com with DHE-RSA-AES256-SHA
	encrypted SMTP; 24 Apr 2013 12:00:59 -0000
X-AuditID: 93eaf2e7-b7ef96d000007a71-a5-5177c971a860
Received: from ILPTEXCH02.ecitele.com ( [147.234.245.181])
	by ilptbmg01-out.ecitele.com (Symantec Messaging Gateway) with SMTP id
	01.75.31345.179C7715; Wed, 24 Apr 2013 15:00:49 +0300 (IDT)
Received: from ILPTWPVEXCA02.ecitele.com (172.31.244.232) by
	ILPTEXCH02.ecitele.com (147.234.245.181) with Microsoft SMTP Server
	(TLS) id 8.3.264.0; Wed, 24 Apr 2013 15:00:48 +0300
Received: from ILPTWPVEXMB02.ecitele.com ([fe80::5979:ca8d:419f:56df]) by
	ILPTWPVEXCA02.ecitele.com ([fe80::c473:490d:3a7e:e34a%12]) with mapi id
	14.02.0328.009; Wed, 24 Apr 2013 15:00:48 +0300
From: Michael Fainstein <Michael.Fainstein@ecitele.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] do_clean failure on NFS drive
Thread-Index: Ac4/6S/LKMdZbeZVQK62rW64eH+MqwA0edCAAAmftfA=
Date: Wed, 24 Apr 2013 12:00:47 +0000
Message-ID: <62673661A504604B856269DAADA8BC281DE428D2@ILPTWPVEXMB02.ecitele.com>
References: <62673661A504604B856269DAADA8BC281DE40AAC@ILPTWPVEXMB02.ecitele.com>
	<1500751.eqyz6Yl0CS@helios>
In-Reply-To: <1500751.eqyz6Yl0CS@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.4.58.22]
content-transfer-encoding: quoted-printable
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Brightmail-Tracker: H4sIAAAAAAAAA3VTa0gUURjl7ozraE6No6tXe7hMD1KxdjVpzbTAgoIgpaDXDxtnb7NTu7Pb
	zrq6RbFRESqmZpkuhFqLbYuU9tAQw7SnFWVEUP0oKCsfPUCMjYhoxkkTovkxnHvPd875uHwf
	gdFl4YmEILqQU2StjDYSrx0ZG0/b219SYPB9jzOdGG7Vrgbrjt0/rs0H271gJSuKdhfrQnoz
	krgcJt8puFnOw+gFcw5jZPQOK8shGxJdOQzrcCDRzORG6v/5VsplgqhHImc3CyKfw6zftDHN
	ZMrMSjMyuYvmGzOyIzdbBEmP0mysYNXbkCSxPNLLNzuvYpbxUBXmqIelgaZTYV5wOqYcEASk
	lsGjv9LLQYQM4+DA60vachBJ0FQPgLdHmjGFoKnrANZXz1KJOwAO9PvDFUJLLYdPmr9O4FjK
	CCvaq3AFY1QmrK0/gikBMVQ67L0Yq5ZkwPbWBo2KV8AXdWUTUpxaCIMPf0xISSofPntaoVVz
	RXijJggUmwhqMfSPQeUayH2GHrRq1KR4+GqwUaP2T0F/9xNMxTo4/O5XmIrnwapHZUCtN8DH
	ne3hKk6FLc2jmBobDfsbBnE1NgV+GW/5o02AvYEXeDVI8E2L802z8k2z8k2zagJ4EOgEq8NV
	ZOMNxiWIE1zIipZwdttloM7Lx+vgR+OCPkARgIkiV59xF9BhrFvy2PpAAqFhdOSaeyUF9Mwi
	u9ljYSVLobPYiqQ+AAmMiSUvd8gcaWY9+5DTPkmtlR+zBkucwdnlyRRdhRkGw/8PTDx53rtl
	I03x8lzuQciBnJM+cwiCgWRIiY92Ih6V7hKsrr+0hohQ2oiS2xhXakjJwdokgVf5ByCL8F0b
	HAWE/+2Q/A9cGR4FNC7aRZQYT35SBJQisBSLU56TGzQC4uXHiCHp+3JVlLxfU64jcqBGDjxw
	eiJQ3qUpKtELolPq0KqehXcvLEqqTL4Z8WrDDb+3tCN53eeDZ4cKZwedbU26giIeT7VXfdi/
	+1ZXTTZdnNnSdZJsfp96bcyU9zNleTc3ONqZnpf7vONQ3f5ud+DwubldJbVX6nYRb5YO3OEJ
	WNT5rW1DUntFY8+OtiOVHPkyND+Vf7T1fN62JN1TBpcsrDEFc0rsb+9jYgUcBAAA
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_clean failure on NFS drive
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
X-List-Received-Date: Wed, 24 Apr 2013 12:02:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="windows-1255"

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: =E9=E5=ED=A0=E3 24 =E0=F4=F8=E9=EC 2013 13:13
> To: Michael Fainstein
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] do_clean failure on NFS drive
> 
> On Tuesday 23 April 2013 06:10:05 Michael Fainstein wrote:
> > Recently I moved my working environment from local drive to NFS and sinc=
e
> > then do_clean task is failing all the time with error: ERROR: Error
> > executing a python function in ......:
> > OSError: [Errno 39] Directory not empty: '....../temp'
> >
> > However, when I look at temp directory it is empty!
> >
> > I put the following watcher on this directory:
> > SNAP0=3D"xx";while [ 1 ]; do SNAP=3D`ls -a
> > tmp/work/ppce500v2-fsl-linux-gnuspe/elfutils-0.125-r4/temp/`;if [
> > x"${SNAP}" !=3D x"${SNAP0}" ];then echo "`date`";echo
> > "${SNAP}";fi;SNAP0=3D"${SNAP}";done
> >
> > And got the following:
> > Tue Apr 23 08:28:38 IDT 2013
> > ./
> > ../
> > Tue Apr 23 08:28:51 IDT 2013
> > ./
> > ../
> > log.do_clean@
> > log.do_clean.572
> > Tue Apr 23 08:28:51 IDT 2013
> > ./
> > ../
> > log.do_clean.572
> > run.do_clean.572
> > Tue Apr 23 08:28:51 IDT 2013
> > ./
> > ../
> > .nfs000000000210f27700000eb6
> > Tue Apr 23 08:28:51 IDT 2013
> > ./
> > ../
> >
> >
> > It looks like do_clean have a log file open when it tries to remove temp
> > directory. It doesn't interfere with removing directory on local drive,
> > however on NFS it does. If you remove open file on NFS, the file stays i=
n
> > the directory with .nfsXXXXXX name till it is closed and only then it is
> > removed (i.e. when do_clean exits). This file triggers the exception
> > "Directory not empty". Any suggestions how to solve this? Is this solved
> in
> > latest version? I am using Freescale's SDK 1.3
> > QorIQ-SDK-V1.3-20121114-yocto that is based on Yocto version 1.2.1
> 
> I have to say I don't think we support having TMPDIR on NFS, particularly
> because of cases like this where NFS does not behave in the same way as a
> standard filesystem. Aside from our own code, we'd have to take care of an=
y
> subtle issues in the build systems of every piece of upstream software
> being
> built, and that's a bit too much to support.
> 
> However, if you or someone else can figure out how to fix this specific
> problem
> in a reasonable manner and send a patch, it would probably be accepted; bu=
t
> AFAIK we still recommend not using NFS for this.
> 
> Cheers,
> Paul
> 

It looks like this issue was already solved by Richard Purdie in file meta/c=
lasses/utility-tasks.bbclass in change "utility-tasks: Set T to alternate lo=
cation during do_clean".
If do_clean's log is in alternate location then nothing interferes with oe.p=
ath.remove of temp directory under ${WORKDIR}.
This fix is probably much better than my own fix: I replaced in /utility-tas=
ks.bbclass  function do_clean "oe.path.remove(dir)" for ${WORKDIR} by "os.sy=
stem("rm -rf %s" % (dir))".

Cheers,
Michael



This e-mail message is intended for the recipient only and contains informat=
ion which is CONFIDENTIAL and which may be proprietary to ECI Telecom. If yo=
u have received this transmission in error, please inform us by e-mail, phon=
e or fax, and then delete the original and all copies thereof.


