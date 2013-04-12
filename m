Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-scoter.atl.sa.earthlink.net
	(elasmtp-scoter.atl.sa.earthlink.net [209.86.89.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 329D6E014DB
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2013 12:09:44 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=fgVhecTm73/kn/uza5Q2/RNTFvzKhQoZSTtOMedZfiUrnvKVKurt6ehr3qcRP7Ef;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-scoter.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UQjLy-0004er-UQ; Fri, 12 Apr 2013 15:09:43 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Mehaffey, John'" <John_Mehaffey@mentor.com>,
	<yocto@yoctoproject.org>
References: <E3353710E3C2464080E5D3276734EE98@PAULD>
	<371E240E6FC1D44DA5E51EE9DCDCB7845E3984B7@NA-MBX-03.mgc.mentorg.com>
In-Reply-To: <371E240E6FC1D44DA5E51EE9DCDCB7845E3984B7@NA-MBX-03.mgc.mentorg.com>
Date: Fri, 12 Apr 2013 12:09:43 -0700
Message-ID: <E2C4519D51BB4076AC6B8806B691B663@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac43pynxjXqvFFzoROaGbmMZECo3HwAArbqXAAGtJxA=
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688e312cdeb45947aef824c50cc8862e779350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Re: An embarrassment of TTYs
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
X-List-Received-Date: Fri, 12 Apr 2013 19:09:44 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Mehaffey, John
> 
> Look for CONFIG_LEGACY_PTY* in your config and tune those values.
> 
> You can ssh without any legacy PTYs.

So "legacy" PTYs are the 256 BSD devices, so if I disable them I'll still
have the UNIX 98 /dev/ptmx mechanism? I don't need SSH, but will nead one
pseudo-terminal for something else in the near future.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


