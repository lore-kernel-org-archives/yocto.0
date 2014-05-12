Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F135E00B74; Mon, 12 May 2014 12:54:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.1 DKIM_SIGNED Message has a DKIM or DK signature,
	not necessarily *      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1031 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 May 2014 12:54:25 PDT
Received: from mail-yh0-f43.google.com (unknown [209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0986E00B5D;
	Mon, 12 May 2014 12:54:25 -0700 (PDT)
Received: by mail-yh0-f43.google.com with SMTP id v1so2163724yhn.30
	for <multiple recipients>; Mon, 12 May 2014 12:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=0t7dAix4qm7+JctCvN30WgR3VeRVqFuvYGCtUg+butc=;
	b=uWyNRWPpMYmD4A0BPI+QMDlAaed+4Rte887noeJLWtMDnwxMNLCbjgDLfXe4SyrWuX
	xDoKDZBoL3YkybGAiHM+Ir7kzQcm4UfJPJ7mM9+zJUusikGmNK7UOizWKPihJJnA+pos
	DNZlFeVqJImbXErR5dT3Ff6cQWJXK3P/dtfW4GTP1lA/vpUbdaaMeoN+14bsV19N5zYw
	r3zrnAPL394jEk/u4YP+h8gff4gismHSEz7/ubUBBxNji2Rv1pJkUfTfrYjjqO3QbRra
	ko+T9fK9zbtMr3BDATnFtsGd4D1CgAwFtaZ2psBgLA1uy2FAgyi5Hj9y9X8/PPMhsrfs
	Rs9A==
MIME-Version: 1.0
X-Received: by 10.236.142.16 with SMTP id h16mr46694386yhj.2.1399922947107;
	Mon, 12 May 2014 12:29:07 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.170.166.213 with HTTP; Mon, 12 May 2014 12:29:07 -0700 (PDT)
In-Reply-To: <53710BDA.10306@mentor.com>
References: <53710BDA.10306@mentor.com>
Date: Mon, 12 May 2014 16:29:07 -0300
X-Google-Sender-Auth: eZT8wpv_eITTKfUXoQ41COOPda4
Message-ID: <CAP9ODKp4FcOw7RMS1dnniv=TzrXkPkzNKkyLSwiAWf83ajtZKg@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Sean Hudson <sean_hudson@mentor.com>
Cc: meta-amd@yoctoproject.org, yocto <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	yocto-bsp@yoctoproject.org, Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] New meta-amd mailing list announcement
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
X-List-Received-Date: Mon, 12 May 2014 19:54:29 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, May 12, 2014 at 2:58 PM, Sean Hudson <sean_hudson@mentor.com> wrote:
> There is a new mailing list for AMD platform/board related patches and
> discussion.
> You can sign up here: https://lists.yoctoproject.org/listinfo/meta-amd
>
> The meta-amd layer git repository is publicly available here:
> git://git.yoctoproject.org/meta-amd
> (cgit web interface here:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-amd/)
>
> Please checkout the README at the top level for details on submitting
> patches.

What are the layer dependencies?

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

