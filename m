Return-Path: <stephanoc@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22AF0E009B8; Tue, 27 Oct 2015 09:36:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stephanoc[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFFD9E00708
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2015 09:36:08 -0700 (PDT)
Received: by pasz6 with SMTP id z6so227030156pas.2
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2015 09:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=qKc7p+M3C+oaamlj3Z6SoTL3zAdfj0TcRFxfHndL0C4=;
	b=BCF3inp8p4zLMIvZU7DuWNu2pcyICIMZpLUB1fxIxGg8kt8nMB1+FbLVGy/q59wfC6
	l8wyd2cbCjfxlDdngQaRk9FrzuxXRKxgHwnbYx2y1gFZakBeeQVXhSuYyD2UaWU/8pPf
	ty5zX8LYNK5PDxGSd/tOOx7tDdVf6yZORoCxAHqeWjVi72OEOMtUKtZbDFHGcd33dMdx
	XFrgggL4COfkppHFMEXQLPN2NmoISTACMZriIjYIkmlgWMvFCIziYOkuNM6MxxZX9hs5
	80Asg0vNXAuf7IgD2id2/dRYJlJ9SI23c4QshLvq0RsPEeiCk2C81G8M3s2SxZFleoQL
	/MOw==
X-Received: by 10.68.165.194 with SMTP id za2mr29077236pbb.72.1445963767864;
	Tue, 27 Oct 2015 09:36:07 -0700 (PDT)
Received: from mail.spox.systems
	(ec2-52-11-37-43.us-west-2.compute.amazonaws.com. [52.11.37.43])
	by smtp.gmail.com with ESMTPSA id
	im9sm40579488pbc.1.2015.10.27.09.36.07
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 27 Oct 2015 09:36:07 -0700 (PDT)
Date: Tue, 27 Oct 2015 16:35:43 +0000
From: Stephano Cetola <stephanoc@gmail.com>
To: openembedded-devel@lists.openembedded.org
Message-ID: <20151027163542.GA21537@mail.spox.systems>
References: <CAOd_LFwgMqDUBKzxjs50G+=F0TgFg8ZuoCBX6jqs6p8fLFQibg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOd_LFwgMqDUBKzxjs50G+=F0TgFg8ZuoCBX6jqs6p8fLFQibg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [oe] OE/Yocto developer survey
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
X-List-Received-Date: Tue, 27 Oct 2015 16:36:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 10/26, Cliff Brake wrote:
> How long have you been using OE?  

~3 years

> How do you use OE/Yocto?
 [ X ] product development
 [ X ] hobby/research/education/yocto core developer, etc
 
> What distro do you use?
 [   ] Poky
 [   ] Angstrom
 [ X ] nodistro or custom (Based on Poky)
 
> How do you organize multiple git repos?
 [   ] Git submodules
 [ X ] Repo
 [ X ] Other (Customer Python scripts)
 
> What packaging system?
 [   ] OPKG
 [   ] RPM
 [ X ] Other (IPK)
 
> What GUI toolkits?
 [ X ] Qt
 [ X ] Gtk
 [   ] EFL
 [ X ] HTML5/JS
 [   ] Other
 
 Our clients develop in QML.

> What init system?
 [   ] systemd
 [ X ] sysvinit
 [ X ] busybox init
 [   ] Other
 
> What libc?
 [ X ] glibc
 [   ] uclibc
 [   ] musl
 [   ] Other
 
> How do you develop custom applications?
 [   ] application-SDK
 [ X ] devshell
 [ X ] develop on PC, test on target
 [   ] Other
 
> What language do you primarily use for custom applications?
 [ X ] C
 [ X ] C++
 [   ] Python
 [   ] Javascript
 [   ] Lua
 [   ] Other
 
 Qt for C++

> What do you use for Continuous Integration?
 [   ] Buildbot
 [ X ] Jenkins
 [   ] Other

Tried buildbot but it required too much customization for our small
team.

> Do you use any any of the tooling projects
> (https://www.yoctoproject.org/tools-resources/projects) such as ADT,
> Hob, Toaster, etc?
 
 No

