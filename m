Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A8AFE005B3
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 18:42:49 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id 10so110551ied.28
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 18:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=d4uN7XZniQFrRYTWjNmVA0LP8yxxQf7NmIUpUwRubzU=;
	b=RIC5KuK0IHyA99e2BIQB77fFPP3/5mQ67M2PjEqtKePw+1whn0cZ+oYBnuNN8AcZgJ
	JJXyntc84jW828J4zOxNydWMV5ACSVEKZk8ONQQGpJ0ELPllts2D1oeLqi0lrgGrLIGP
	d6/BoDU7j2JZbcm3GbapvrzEbjN8gZY7MU6mn098qgb6MQf91g4OeqxmHyOQnv+8/Paz
	/NPmV6sKMY+HkpQnOLKNm/n4abX9imRKPToPq7ibUoLEvAIqdMrkB81ustDh0eTDn7R8
	j4I+ruHHwYEUbLlRuMGEj1h6S7IB1ZdyP49z63s1aqu6eVPQcApA8kCUrAEnx/pQpakQ
	zWvA==
X-Received: by 10.50.17.69 with SMTP id m5mr39216igd.19.1371174169709; Thu, 13
	Jun 2013 18:42:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.4.168 with HTTP; Thu, 13 Jun 2013 18:42:19 -0700 (PDT)
In-Reply-To: <CAM1ZcoU1VZLQeKCt=xySb8ji0v-dYTQkiXwPDG_oDOwafUdgjg@mail.gmail.com>
References: <CAM1ZcoU1VZLQeKCt=xySb8ji0v-dYTQkiXwPDG_oDOwafUdgjg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Jun 2013 18:42:19 -0700
Message-ID: <CAMKF1sqFWce7LiTq6Z3wFH84qPB1tXL6oskZpgY9VkMzJOxrYA@mail.gmail.com>
To: Katu Txakur <katutxakurra@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe using waf installation location
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
X-List-Received-Date: Fri, 14 Jun 2013 01:42:51 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jun 13, 2013 at 1:55 AM, Katu Txakur <katutxakurra@gmail.com> wrote:
> I'm creating a recipe for jack2_1.9.9.5.bb. The tarball uses waf to
> configure, compile and install. It configures and compiles correctly, but in
> the installation part I get:

There is existing recipe in classic OE that you can forward port with
lesser effort

http://git.openembedded.org/openembedded/tree/recipes/jack/jack_0.118.0.bb?h=2011.03-maintenance

