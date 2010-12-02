Return-Path: <tim.bird@am.sony.com>
Received: from TX2EHSOBE002.bigfish.com (tx2ehsobe001.messaging.microsoft.com
	[65.55.88.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 35E5B4C80FAC
	for <yocto@yoctoproject.org>; Thu,  2 Dec 2010 12:54:32 -0600 (CST)
Received: from mail197-tx2-R.bigfish.com (10.9.14.242) by
	TX2EHSOBE002.bigfish.com (10.9.40.22) with Microsoft SMTP Server id
	14.1.225.8; Thu, 2 Dec 2010 18:54:31 +0000
Received: from mail197-tx2 (localhost.localdomain [127.0.0.1])	by
	mail197-tx2-R.bigfish.com (Postfix) with ESMTP id 8AD068000F5	for
	<yocto@yoctoproject.org>; Thu,  2 Dec 2010 18:54:31 +0000 (UTC)
X-SpamScore: -3
X-BigFish: VPS-3(zzbb2cKzz1202hzzz2fh2a8h691h637h668h66h)
X-Spam-TCS-SCL: 5:0
X-Forefront-Antispam-Report: KIP:(null); UIP:(null); IPVD:NLI;
	H:mail7.fw-bc.sony.com; RD:mail7.fw-bc.sony.com; EFVD:NLI
Received: from mail197-tx2 (localhost.localdomain [127.0.0.1]) by mail197-tx2
	(MessageSwitch) id 1291316065318943_22145;
	Thu,  2 Dec 2010 18:54:25 +0000 (UTC)
Received: from TX2EHSMHS045.bigfish.com (unknown [10.9.14.241])	by
	mail197-tx2.bigfish.com (Postfix) with ESMTP id 782531E804F	for
	<yocto@yoctoproject.org>; Thu,  2 Dec 2010 18:54:24 +0000 (UTC)
Received: from mail7.fw-bc.sony.com (160.33.98.74) by TX2EHSMHS045.bigfish.com
	(10.9.99.145) with Microsoft SMTP Server (TLS) id 14.1.225.8;
	Thu, 2 Dec 2010 18:54:21 +0000
Received: from mail1x.sjc.in.sel.sony.com ([43.134.1.112])	by
	mail7.fw-bc.sony.com (Switch-3.4.2/Switch-3.3.2mp) with ESMTP id
	oB2IsIlJ002620	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256
	verify=FAIL)	for <yocto@yoctoproject.org>; Thu, 2 Dec 2010 18:54:19 GMT
Received: from timdesk.am.sony.com ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	oB2Is81h031382	for <yocto@yoctoproject.org>;
	Thu, 2 Dec 2010 18:54:08 GMT
Message-ID: <4CF7EB4A.3010109@am.sony.com>
Date: Thu, 2 Dec 2010 10:54:02 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.12) Gecko/20100907 Fedora/3.0.7-1.fc12 Thunderbird/3.0.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-OriginatorOrg: am.sony.com
Subject: Still having build problems - what version of python is required?
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
X-List-Received-Date: Thu, 02 Dec 2010 18:54:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

So I gave up, for the time being, trying to build behind
my firewall.

I tried to set up a machine outside my firewall to do a build.
Unfortunately, this machine is a bit dated.  It is running
Fedora 8, with python version 2.5.1.

Here's what I get when I run bitbake:

[tbird@tree poky-4.0-build]$ bitbake poky-image-minimal
  File "/a/home/tbird/work/yocto/poky-laverne-4.0/scripts/..//bitbake//bin/bitbake", line 207
    except Exception as e:
                      ^
SyntaxError: invalid syntax
[tbird@tree poky-4.0-build]$ python --version
Python 2.5.1
[tbird@tree poky-4.0-build]$ cat /etc/issue
Fedora release 8 (Werewolf)1

What version of python is required?

Note also that I couldn't find a prce package for this distro, despite
there being an prce-devel page available.  I don't know how important
that will be for building stuff.

Is it a dead end trying to get a host distro this old to build
poky?
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Linux Forum
Senior Staff Engineer, Sony Network Entertainment
=============================


