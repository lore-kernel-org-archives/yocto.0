Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC7DEE0147A
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 15:29:50 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1TvFxE-0003UL-NB
	for yocto@yoctoproject.org; Wed, 16 Jan 2013 00:30:04 +0100
Received: from 213-193-73-227.static.cablecom.ch ([213.193.73.227])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 00:30:04 +0100
Received: from gmane by 213-193-73-227.static.cablecom.ch with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 00:30:04 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 16 Jan 2013 01:26:20 +0200
Message-ID: <50F5E59C.5020700@reliableembeddedsystems.com>
References: <kcop9d$mfv$1@ger.gmane.org> <20130111171908.5162428c@skate>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 213-193-73-227.static.cablecom.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
In-Reply-To: <20130111171908.5162428c@skate>
Subject: Re: gcov on target
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
X-List-Received-Date: Tue, 15 Jan 2013 23:29:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

After compiling with:

GCOV_PROFILE := y

I get:

insmod debugfs.ko
Error: could not insert module debugfs.ko: Invalid module format
unknown relocation: 38

Is this a known issue, or am I doing something stupid?

Regards,

Robert



..."In the beginning, there was software. And it wasn't good."

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



