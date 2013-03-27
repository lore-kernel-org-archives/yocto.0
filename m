Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBA89E01481
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2013 01:09:18 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=b2hw2zmKprNDKu/YTD7CFBOo9e3qi8Pw0EjZh9osSRKCNePfsDGJFw4kPMRz+VIV;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UKlQ5-0005pa-UQ
	for yocto@yoctoproject.org; Wed, 27 Mar 2013 04:09:18 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD><20130307104051.GH32228@jama.dyndns-home.com><96E98E10F7094D32B371FD84AFF0FFFC@PAULD><20130307182933.GS32228@jama.dyndns-home.com><50BB56BA2C44400C9B6A31B0C2641BD2@PAULD>
	<20130307224223.GU32228@jama.dyndns-home.com>
In-Reply-To: <20130307224223.GU32228@jama.dyndns-home.com>
Date: Wed, 27 Mar 2013 01:09:11 -0700
Message-ID: <D5340F46DF5F458D9096EA823C3A9EAE@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4br5tbhE6DmnlPSmi0A39DPNa6sAPB6iOA
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688b0e1f46c0741bdc48277a83d951ede2a350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Re: Samba server?
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
X-List-Received-Date: Wed, 27 Mar 2013 08:09:19 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

A couple weeks ago, several people here were kind enough to help me through
the process of adding the OpenEmbedded layer called
meta-openembedded/meta-oe to my core-image-base-cedartrail-nopvr build,
which I wanted because it contains Samba. I eventually got it to build
without errors. But still no Samba.

The log file shows that the layer.conf file for that layer is being read,
and there is indeed some recipes for Samba. The bitbake -s option lists
samba as one of the packages. But the logs only show a few of recipes being
processed from this layer, none having to do with Samba. I was under the
impression that adding a layer added the recipes in the layer, and caused
them to be built. Apparently not. What am I missing?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


