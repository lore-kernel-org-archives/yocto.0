Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f53.google.com (mail-ee0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D578CE01728
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 11:46:57 -0700 (PDT)
Received: by mail-ee0-f53.google.com with SMTP id e51so1627861eek.26
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 11:46:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=qAWzc9hHAcgUrgi0QDoN+2KTjhwfinN7Ziv+gVB5Goc=;
	b=gD/Pqfctz5UjQbu6Op2bgJXH2TkuA+2caWmeF7KFw8U1uxr+ac9bt/AOOIrUTuamTj
	CkMORnMNhraRbUrLe8XYUzXCUBLmX1MynHvTX5tI/LNhCnxWmcs6tDgUFpFeXeXY5fhh
	OkMNVqYkW+l6yMXLE1ri0NNx94q88GxyQ1dCexXs0OkAV3ZRuZE6wa0tpfBQtSORBkwH
	HRNyfDbk7UxCah05SRrP/Ti9ze/xp3TCix9WsfOxjxzNg5JuNcoQ10YIznc3rgQ8G4jB
	3gFDhaY70xqeeIUFlcMBVi0Afj/Ao+xWWIjguJAH9ao144vNtbkAIYHRTzZNqHlEaPXZ
	F7kw==
X-Gm-Message-State: ALoCoQmgGl3VFFEi5TEbhKGatSEl+1fd5ksJ6pgOgQgSzgEtvUKadnIAbmas1J8vWfhbP+ea1LJj
MIME-Version: 1.0
X-Received: by 10.14.214.136 with SMTP id c8mr23259785eep.6.1382986016386;
	Mon, 28 Oct 2013 11:46:56 -0700 (PDT)
Received: by 10.14.117.67 with HTTP; Mon, 28 Oct 2013 11:46:56 -0700 (PDT)
In-Reply-To: <526E3AED.8010501@digitalendoscopy.de>
References: <526E3AED.8010501@digitalendoscopy.de>
Date: Mon, 28 Oct 2013 11:46:56 -0700
Message-ID: <CALmOhgnRbmmN=vtYG4WVYCRgMZr4LgUJKwxs+ZK1HvtPV=fy8w@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Volker Vogelhuber <v.vogelhuber@digitalendoscopy.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Out of tree build yocto dylan
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
X-List-Received-Date: Mon, 28 Oct 2013 18:47:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 28 October 2013 03:22, Volker Vogelhuber
<v.vogelhuber@digitalendoscopy.de> wrote:
> I'm currently trying to have the TMPDIR moved out of the normal repository path under dylan.
> If I set it to
> TMPDIR = "${TOPDIR}/../../build/tmp"


Does it work better if you use an absolute path (you can use the same
TMPDIR location, just specify it absolutely, instead of relatively)?

