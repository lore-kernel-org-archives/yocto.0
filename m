Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69BD2E00559; Wed,  9 Jul 2014 16:11:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82DE1E002AA
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 16:11:46 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id hy4so8907607vcb.6
	for <yocto@yoctoproject.org>; Wed, 09 Jul 2014 16:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=aHytq8dKcFHYlIYsgmnrC4Iwje6/4oNB6r0v77FsnKU=;
	b=QL2pWBsfyxoVMRcBGAm4dci1nAAlM6tZg2tHE3oirUQFgHgCc/lJgG1Ptjzay/0ztK
	ZXE0UrVySYhYWFmM829NwqFUh463vwwTeyZZStxa3I2KcFXmbCdk7tACXmrsX9OvsOHh
	SBurogvobfPNBkocb5H+tN0Z80jgfaVTlFX+VWXkLGwXm2jDfI1+90u7HmaW0CicqLKf
	TLYkW2RZhZNjCXcydHOStOi71sg3wX6HyhUyLJEVW6+D4zFWTeDeljmkGsnZGnjMjQur
	JET8U884FlC/OcZNPMqtU7QHiq/DQbyhRgYqOSGTAVjaOYBJKuUzUkZHSQPh7hkXzA9S
	MlKA==
X-Received: by 10.58.114.41 with SMTP id jd9mr440285veb.51.1404947505573; Wed,
	09 Jul 2014 16:11:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.105.233 with HTTP; Wed, 9 Jul 2014 16:11:15 -0700 (PDT)
In-Reply-To: <CAO-21LPnS-BJyZw-SEiSveK5sP=sZaDnMRd9PHVVe5WG6NQG_A@mail.gmail.com>
References: <CAO-21LPnS-BJyZw-SEiSveK5sP=sZaDnMRd9PHVVe5WG6NQG_A@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Wed, 9 Jul 2014 19:11:15 -0400
Message-ID: <CAF_dkJA_5nbzfAA02_CCxmEZ3vJjjQXYXqFRhV_HsmyuuuPuiA@mail.gmail.com>
To: "Allen Kennedy Jr." <allen@kennedystuff.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Environment Variables being unset by bitbake?
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
X-List-Received-Date: Wed, 09 Jul 2014 23:11:55 -0000
Content-Type: text/plain; charset=UTF-8

Oh!  I think I know the answer to this one!

Check out BB_ENV_EXTRAWHITE at
http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#var-BB_ENV_EXTRAWHITE.
If you set that to something like JAVA_HOME, that might do what you
want.

--wpd


On Wed, Jul 9, 2014 at 4:58 PM, Allen Kennedy Jr.
<allen@kennedystuff.com> wrote:
> I am trying to run java program from a recipe.
>
> I get an error that JAVA_HOME is not set.
> I can verify that JAVA_HOME is set by echo $JAVA_HOME.
>
> I can then run the program without issue, but from within a recipe it
> seems that $JAVA_HOME is unset.
>
> I have verified this with 'bbnote "java is here: ${JAVA_HOME}"' from within
> a recipe.
>
> Any ideas why or how this is getting unset, and how to fix?
> I couldn't find any documentation that talks about this.
>
> Thanks
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

