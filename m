Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBBDAE00B70; Fri, 30 Oct 2015 08:48:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8921BE00B5D
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 08:48:12 -0700 (PDT)
Received: by igpw7 with SMTP id w7so12744926igp.1
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 08:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=7RFxZ3J5YAvQdNKz0PtPqsFNlVUSn6QdBT4V+uSKGA8=;
	b=j1nIpiS6HGsw0bySnZszVp6pDo9jromvFYdiaJzeHC3ArPqA81fCWUESDYsZLq7tqZ
	UhCOfAGQYhCHOusy31aVQSaONALgSzAk+Srb64NqLp15JlkdNubYRHnnnczN7DwEFweX
	9MMmOELOH9rmiv1E6RTpGMlOLjfReXE1dD3eTI//xxuNaWAXw2M4xt5QOAZdcusq82gy
	K6Yw11LeS2nt58f7iMORDFiZRxPjSnjbB9X3B1N2+DVqP6w4Wp/KR/yEyiGgTmxPnOOV
	MSkjBP++lsU5tlQk/PHvJrzOOi3EqbeShv/44WJxAeYbzmYAm8wGyPE+rGZpMTK9Sg/i
	b/xQ==
MIME-Version: 1.0
X-Received: by 10.50.178.145 with SMTP id cy17mr3660633igc.1.1446220091627;
	Fri, 30 Oct 2015 08:48:11 -0700 (PDT)
Received: by 10.107.142.202 with HTTP; Fri, 30 Oct 2015 08:48:11 -0700 (PDT)
In-Reply-To: <CAF3SDA7AKCpamRBD49jCZ7R7qo_ZxMbTJ4+nc7jd1HO7-QbmFw@mail.gmail.com>
References: <CAGMdoFmGGd6QWhRWWhYQYajjmhVYugZh3zga0WNXbwN+vNWSBQ@mail.gmail.com>
	<3581319.5ZKXkvWLxe@peggleto-mobl.ger.corp.intel.com>
	<CAGMdoFn5tQ7TO07WpqHi0sR7kOKpNsmi=_MOnsNf=4J47_7mJQ@mail.gmail.com>
	<CAF3SDA4v=-43Ege2hxyc-61RJXA8U2yqQKD2VQmy5D016W7USA@mail.gmail.com>
	<CAGMdoFnz_0sw1KDvH2Drx-k_qpF87SEmMtq7sNLXTNRJMcT9uw@mail.gmail.com>
	<56321AB5.1050108@windriver.com>
	<CAGMdoF=2QJd1DEH7f7p7sRcMP56vz_pGx8VFUOANWt+fiMShTQ@mail.gmail.com>
	<563364F1.1050901@windriver.com>
	<CAF3SDA7AKCpamRBD49jCZ7R7qo_ZxMbTJ4+nc7jd1HO7-QbmFw@mail.gmail.com>
Date: Fri, 30 Oct 2015 08:48:11 -0700
Message-ID: <CAGMdoFm5eF=Pjo6kty5ay-R51JvyOPzL1brbM0UJ-F=nGB-CoA@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel defconfig configuration
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
X-List-Received-Date: Fri, 30 Oct 2015 15:48:13 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 30, 2015 at 8:10 AM, Daniel. <danielhilst@gmail.com> wrote:
> I saw that REMOTEPROC is selected by other *_REMOTEPROC config
> options. It seems a driver to handle another process on same board,
> right?
> It seems also that other architetures select REMOTEPROC, so if you're
> creating a new board with a remote processor I guess that you will
> need to
> create a remote processor driver and add CONFIG_YOURARCH_REMOTEPROC to
> drivers/remoteproc/Kconfig, and make that selects REMOTEPROC as
> OMAP_REMOTEPROC does
> for example.

OK, that makes sense.  Thanks everyone!

