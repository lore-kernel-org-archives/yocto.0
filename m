Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 230A3E00AD1; Sun, 22 Nov 2015 17:11:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEE5EE00AB7
	for <yocto@yoctoproject.org>; Sun, 22 Nov 2015 17:11:48 -0800 (PST)
Received: by lfaz4 with SMTP id z4so98411861lfa.0
	for <yocto@yoctoproject.org>; Sun, 22 Nov 2015 17:11:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=fIG2a5UgF8EegCGwdn6+RBET26kL/scXIeW27jeuOdg=;
	b=N8oJ/AvcUgxCvuMmpoCRsiePer2LcZawChJ4WaAdEZ9VMrPqKbSWuciphGgW8fPUdO
	5L18v7UfCGNJVp5CsCNLb86z2Q1bdNAo6Xd0i5HxqaKJTzCBtaVHj8nNAav8UTPQ8U/X
	k4isvwZLpQJbU6fMgnx2fPjS1J2f7FId4R3EbTKPkd+CKHWdjBs0WM9ceesLSIfr9IbN
	OowR2rhxqKkiv22vl4r0jCreoFPhx+tgbWhlXGEcWcQWqqz6Z9TZIXHD2q6is3zQ13vW
	shAQBNFwWPdA/P7/7116N24FXcGQDuP58sjXFcaow0Ysv8GrXL4AFnP4PxkfYhfW5hAS
	Ybgg==
X-Received: by 10.25.209.148 with SMTP id i142mr5396266lfg.163.1448241107128; 
	Sun, 22 Nov 2015 17:11:47 -0800 (PST)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.9.70 with HTTP; Sun, 22 Nov 2015 17:11:27 -0800 (PST)
In-Reply-To: <CAOd_LFwKj22oULeVOE3ko8W7yscHmt5o6ydZjz87MOSGSC-mzw@mail.gmail.com>
References: <CAOd_LFwKj22oULeVOE3ko8W7yscHmt5o6ydZjz87MOSGSC-mzw@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Sun, 22 Nov 2015 17:11:27 -0800
X-Google-Sender-Auth: J2BLr7XyxRSkmr3KREIJnOHecNo
Message-ID: <CA+YB3rY1O9Z=vrDCzDZg16u7V+v4CvasJHFJwhSxbC6qsDOybQ@mail.gmail.com>
To: Cliff Brake <cbrake@bec-systems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-devel <openembedded-devel@lists.openembedded.org>
Subject: Re: OE/Yocto developer survey results
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
X-List-Received-Date: Mon, 23 Nov 2015 01:11:52 -0000
Content-Type: text/plain; charset=UTF-8

Very interesting indeed! Thanks for the data, Cliff!

On Wed, Nov 18, 2015 at 7:58 AM, Cliff Brake <cbrake@bec-systems.com> wrote:
> I have posted the results to:
>
> http://bec-systems.com/site/1175/openembedded-yocto-usage-survey
>
> Thanks to all who responded to the survey.
>
> Cliff
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Jeff Osier-Mixon
Open Source Community Architect, Intel Corporation

