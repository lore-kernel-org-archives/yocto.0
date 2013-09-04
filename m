Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-banded.atl.sa.earthlink.net
	(elasmtp-banded.atl.sa.earthlink.net [209.86.89.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BCCDE0044E
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 16:50:25 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=F7sj3I671IktR4GhK9tOWbQupOaGRFs1qbK6HanstG4vDrk4DuuvS6+1l+D1hywH;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-banded.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VHMq8-000349-0t; Wed, 04 Sep 2013 19:50:24 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Samuel Stirtzel'" <s.stirtzel@googlemail.com>
References: <2C94F567F1334C30A5BBD2CA59576460@PAULD><521D354E.1020909@mlbassoc.com><8EB78E64DFE9436EAFB462E357C464EC@PAULD>
	<20130828072025.GC3544@jama><DB63579B404D457F9DF825A744067092@PAULD><CAGiJk9eztTXvCR4UjbtXTqRbjN+nKR6KKGgrFqKAvO4TSzSCAg@mail.gmail.com>
	<CAGiJk9chSv2CdBq4-TFJ77zeCtF-2QXjjh+WriQcUXJ5GgEEvA@mail.gmail.com>
In-Reply-To: <CAGiJk9chSv2CdBq4-TFJ77zeCtF-2QXjjh+WriQcUXJ5GgEEvA@mail.gmail.com>
Date: Wed, 4 Sep 2013 16:50:23 -0700
Message-ID: <779B7C6AC95A460FB7D94F91EAF86DF9@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6j4hReYKiL4rESR1eFxh3gsKD22wF5njQw
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606880636a836d1db4374c70429482a022204350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Can anything be done about do_rootfs speed?
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
X-List-Received-Date: Wed, 04 Sep 2013 23:50:28 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Samuel Stirtzel
> 
> If you change:
> 
> COMPRESS_CMD_gz = "gzip -f -9 -c ${IMAGE_NAME}.rootfs.${type} >
> ${IMAGE_NAME}.rootfs.${type}.gz"
> COMPRESS_CMD_bz2 = "bzip2 -f -k ${IMAGE_NAME}.rootfs.${type}"
> 
> in [...]/meta/classes/image_types.bbclass, then can try 
> pbzip2 / pigz.

This raises a question that has come up for me before: is there a way to
override something in a .bbclass, without just editing the file and
therefore losing it whenever new metadata is released? I really have
little sense of the order in which things are read or obeyed in the whole
bitbake process. Those variables look like they're read by the
get_imagecmds() script; is there an opportunity for a recipe to change the
value of COMPRESS_CMD_gz or _bz2 after it's defined, but before that
script gets called?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


