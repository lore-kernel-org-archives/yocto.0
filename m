Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 185E5E00E5C; Fri, 29 Apr 2016 05:26:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F8FDE00E5E
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 05:26:07 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id u185so122570640iod.3
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 05:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ve9eOJkR71exknhu4hH95h5y3TfEXze11KenihQyk4Y=;
	b=Mi5FL/zDlZrVy05lWIeXh7YuwhzaRr6J85HsjR87lbL3Sci97kendUVBrj5Gp3Dng/
	gVTFGaX73gTKrG+3h08XUH+jQaRJgf/Scy2lpXxz3CIzNy4ssov8xk9ri3N5+nkBg05+
	5j/k4XhUyrZGLi5cRsjDW77PzrJALzRxpsFN/hO05Zm7UYo2YKv9c9cB4/Vvjm+bQdsH
	bDoWObvz5mLIspOlrnHz1hMRoxEV9lUsDJRvtGxXDeetJX+hVW/2/1dtT0AD52VCKixm
	HRLiRvIWCNKoJNmNNmDRVUGKJ8XR7lHX8Vr4W7yGN4JY/IugEW7Jb20J/kOxZyWIfAfG
	9V9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ve9eOJkR71exknhu4hH95h5y3TfEXze11KenihQyk4Y=;
	b=XVdZAC0FnIj8U8xQkrkiuJLiioZQBcxvj/+tHYyocxTgANGHFeACKQnB8wBXJm5ViF
	1W/hXKfzNgfXf5YI6zS041IR0bShdDhwJRqsnOpUaI5Hmut12am4akzNpYtFJmZp+OgM
	0/+8kE+vgAUt1JZvLvY22aDyCKpFrz8P4neX7LzC8vQZBg2gAoSMLi7uCu5eQM7PzeBb
	JmUZvVWd0VzynxlMdW1D5bPVh06fL66owoL4/02PgCP1JkNLm/fTxqq738BLkYWZbYkz
	618jWb63l5wg8bKLPwe/cpeh7qcIq8mS6hz2xD5V9sEjmhBUMgwC97ns57Xzf2n9crmC
	XyvA==
X-Gm-Message-State: AOPr4FXf3guA7pOz/OND+ICkfHc0Z5K/IKnO7Cy/232ReJdaQAnDuvz9AmJffEGFbAzu6eNN0xVLJziEJUu7lOnt
X-Received: by 10.107.149.66 with SMTP id x63mr23807843iod.141.1461932766120; 
	Fri, 29 Apr 2016 05:26:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.3.140 with HTTP; Fri, 29 Apr 2016 05:25:26 -0700 (PDT)
In-Reply-To: <1461919494.5465.79.camel@linuxfoundation.org>
References: <1461919494.5465.79.camel@linuxfoundation.org>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Fri, 29 Apr 2016 13:25:26 +0100
Message-ID: <CAPhnLPBUSYsgTwBpKqJGCf53K69_udUXHmTEtfRXiNGr9tLagQ@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: meta-freescale <meta-freescale@yoctoproject.org>,
	yocto <yocto@yoctoproject.org>
Subject: Re: Removing builds of meta-fsl-* from the autobuilder
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
X-List-Received-Date: Fri, 29 Apr 2016 12:26:10 -0000
Content-Type: text/plain; charset=UTF-8

On 29 April 2016 at 09:44, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> NXP has decided to lower its contributions to the support of the
> project and is no longer eligible for the level of automated testing
> we've been making of meta-fsl-ppc and meta-fsl-arm. As such we're going
> to disable those builds going forward.
>
> I don't like doing that but equally this does put a considerable load
> on the infrastructure and the people running the builds and triaging
> bugs and this is what we warned would have to happen.
>
> Beth: Could you make the necessary changes please?
>

See: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/commit/?id=18640b215ecfd6b604291ef4dfdbc06f8d0aa672

When the current production run is complete, I'll update the
production AB to remove

-b

> Richard



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

