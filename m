Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 008BDE00DC2; Thu,  1 Feb 2018 06:29:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f44.google.com (mail-pg0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7745E00B5F
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 06:29:02 -0800 (PST)
Received: by mail-pg0-f44.google.com with SMTP id o13so12478431pgs.2
	for <yocto@yoctoproject.org>; Thu, 01 Feb 2018 06:29:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=daeSkVH5mRe1e2aA2cfHj3qDOsZ7G505HGGytJ6FPao=;
	b=iHWE838leljKSxOMaGWO4ss8Cy5A57d5mfzp8ft4VqeHp6bvjvM1u/ZjS3AN/WvvRn
	KiBkcZZ5PqeMWYokS4/T/eDFQwiECvdFFX8Qq9fOl5geS5VWVZS9gwdYLStvGWnwUQe4
	AFYBx0M7/CVRc9Nxn7/gpmHGmf/Hk+HQUys65niPezdAQv8o54v0lzRrhHa4oySLBPCo
	WcgW8jlsc4Fx0CVFpGOa4JuosBaXWD8fmCtfE6DDMaKMhHKU4yqArIjw/0xsAnRJ5hbe
	uJ+Han0Oq9zp8cpJiHOgYingcpKKQXzJvFyTjWUy1sPh23wKij9iwa/nc0hg6QMRtNtB
	JHrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=daeSkVH5mRe1e2aA2cfHj3qDOsZ7G505HGGytJ6FPao=;
	b=Ro0fgSJ707TKr4zY7GQ12IQ1bGuEGcOfCcqTpkrogUpY3FtDvfRo0YC4cBtlZzBNXr
	pqYVnPOjL633LN/bK5J8AWxUQkaekhF1k3MRGbpfX8OJN3VmWcnUEziM16RLt69PoU0P
	ZPtLxHB4HFV8S6DyhxsY7Ocm74LA7BSQ+LNiBPdWZs37/E72b/yVETAR23deqnZU1+t/
	MyRC+UWsJiPmFr+TB/pEjLb9DIV7tzxX6+pZbyRidIdqWOk8PNkcpLXFXzsantpYqGIy
	bzmyqUnnCSWGS78bJrVGhI6687Th7a3iLhgqDM+Tbn+U0kspSOsyIxx+51fhis05oIiy
	O2dQ==
X-Gm-Message-State: AKwxytf7Vklh9OElIA3uAhrWRpzZAU2AkHWw+7ol/NlUUHNo3AuvG+Ix
	pseqVfLCSb8h8kk4QyFV46FuxxjL1GGXgFF4ia3X5Q==
X-Google-Smtp-Source: AH8x225P0fO9eNFOEkFjThAVIuWLnGA3qvyLCty6u8GX3evOCCQXRPyaAE8MXAQl115rR7I/lKJFuxWIA+wE0JGNHy0=
X-Received: by 10.99.122.15 with SMTP id v15mr28663955pgc.175.1517495342026;
	Thu, 01 Feb 2018 06:29:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.159.5 with HTTP; Thu, 1 Feb 2018 06:29:01 -0800 (PST)
From: Michael Habibi <mikehabibi@gmail.com>
Date: Thu, 1 Feb 2018 08:29:01 -0600
Message-ID: <CAOsp8o_Evg6RvDSuKj_7MBm8GUs8p=SMiTs8DuGEDbPr_hA7dQ@mail.gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: Patching only the target version of a package?
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
X-List-Received-Date: Thu, 01 Feb 2018 14:29:05 -0000
Content-Type: multipart/alternative; boundary="f403045c71cacf590c0564276a04"

--f403045c71cacf590c0564276a04
Content-Type: text/plain; charset="UTF-8"

I'm sure this is really simple but I haven't quite wrapped my head around
it.

We have a bbappend file that supplies a set of patches. It currently has
the unintended side-effect of patching both the native version used during
the Yocto build process, and the eventual target version. How do I modify
the recipe such that it only acts upon the target version?

Would it be something like recipe-cross.bbappend instead of
recipe.bbappend? Or something similar?

--f403045c71cacf590c0564276a04
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m sure this is really simple but I haven&#39;t quite=
 wrapped my head around it.<div><br></div><div>We have a bbappend file that=
 supplies a set of patches. It currently has the unintended side-effect of =
patching both the native version used during the Yocto build process, and t=
he eventual target version. How do I modify the recipe such that it only ac=
ts upon the target version?</div><div><br></div><div>Would it be something =
like recipe-cross.bbappend instead of recipe.bbappend? Or something similar=
?</div></div>

--f403045c71cacf590c0564276a04--
