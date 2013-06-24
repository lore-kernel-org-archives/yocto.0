Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7699BE01403
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 08:59:47 -0700 (PDT)
Received: by mail-qa0-f51.google.com with SMTP id f11so2314580qae.17
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 08:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=wQMeSqNDxtmfguP4J78Cy0Hqg0JCOmBE75uXXB6gypU=;
	b=ICxzPZJ0klCu4fyrCiaWmcq5hUKDYnj2jNzvdzFMnAUPrFHe35/SCqhmXlP3TY2k27
	gVh0LnUpnAAXaMEj37i0VfrhjZ8vamMu9NBLZcSGxOB9vpBoIucaVpsiznETb/gIgBj9
	5oX+oQNMICtkIFNDMiu+ljxcTMR50lixWxB/NhGfk8XJbXTFehxIUsn7LOBAi8NGD1Wa
	wmRi7Tvza8eRYhnOzvc4t4yAUeX5VptoCKFPsXTwbPR2zz9GO5CszvArNkJoBSsR8c3P
	UFoVZrc2dF+lNFwLiyXeJdYsn8COK+xG40zsLYzlmb8vREsl821VQEbgdiJmvH8Tyx1K
	elHw==
MIME-Version: 1.0
X-Received: by 10.49.82.234 with SMTP id l10mr27956897qey.17.1372089587321;
	Mon, 24 Jun 2013 08:59:47 -0700 (PDT)
Received: by 10.49.97.68 with HTTP; Mon, 24 Jun 2013 08:59:47 -0700 (PDT)
Date: Mon, 24 Jun 2013 17:59:47 +0200
Message-ID: <CAFyqS9q5Z283rVhuDkdM4AUGeyEdfvUqJjj4qG3diVf83JY6Tg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: linux-libc-header version mismatch?
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
X-List-Received-Date: Mon, 24 Jun 2013 15:59:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. We are using a 3.6 based kernel in our builds using a custom
kernel recipe. However, I can see that the linux-libc-headers built
but based on a 3.8 kernel?
Is this really how it should be? Are we supposed to also make a custom
recipe for the linux-libc-headers? The image seems to be executing
fine but I am a bit worried about the version mismatch :(

Hans

PS. I believe I posted this question before but I am no longer 100%
convinced it actually left my outbox. At least I never got a response,
which usually happens very quickly :)

