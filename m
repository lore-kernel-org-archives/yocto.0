Return-Path: <stefan@agner.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39B9BE0073A; Sat, 17 May 2014 06:16:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from mail.kmu-office.ch (unknown [178.209.48.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04051E00716
	for <yocto@yoctoproject.org>; Sat, 17 May 2014 06:16:37 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id 19C27446B9C
	for <yocto@yoctoproject.org>; Sat, 17 May 2014 15:11:56 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at kmu-office.ch
Received: from mail.kmu-office.ch ([127.0.0.1])
	by localhost (mail.kmu-office.ch [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0LScdJtFL0GY for <yocto@yoctoproject.org>;
	Sat, 17 May 2014 15:11:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id 4B21E446BD4
	for <yocto@yoctoproject.org>; Sat, 17 May 2014 15:11:54 +0200 (CEST)
Received: from webmail.kmu-office.ch (unknown [178.209.48.103])
	(Authenticated sender: stefan@agner.ch)
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 3774E446B9C;
	Sat, 17 May 2014 15:11:53 +0200 (CEST)
MIME-Version: 1.0
Date: Sat, 17 May 2014 15:16:09 +0200
From: Stefan Agner <stefan@agner.ch>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
In-Reply-To: <CAPhnLPA645SzYJb=1_BxqAeC+4vwE8G0Cc+T8pv2=1MS2=H8jg@mail.gmail.com>
References: <cover.1399561605.git.stefan@agner.ch>
	<fd5736c2b8f79d2af363af719a8c707decd978e9.1399561605.git.stefan@agner.ch>
	<CAPhnLPA645SzYJb=1_BxqAeC+4vwE8G0Cc+T8pv2=1MS2=H8jg@mail.gmail.com>
Message-ID: <947daf6636251ec02c4f72db19477e8c@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.0.1
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH v1 4/4] GetDeployDir.py/PublishArtifacts.py: get deploy dir from bitbake
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
X-List-Received-Date: Sat, 17 May 2014 13:16:42 -0000
Content-Type: text/plain; charset=
Content-Transfer-Encoding: 7bit

Hi Beth,

Am 2014-05-16 19:11, schrieb Flanagan, Elizabeth:
> Ok, so looking at this a bit more and I think we need to look at how
> we set up the deploydir in PublishArtifacts a bit more.
> 
> I think what we can do here is pull the functionality that we have in
> getDeployNames out, and put it into GetDeployDir (layerversion here
> matters as the default deploy for oe-core changes at LAYERVERSION_core
> =3) . So, yeah, if you could resubmit that I think we can pull the
> last patch in. The other three are under test right now.

Sounds reasonable, I agree. Note that, I will be in vacation for the
next three weeks, hence it will be June until I will be able to resubmit
that... 


--
Stefan

