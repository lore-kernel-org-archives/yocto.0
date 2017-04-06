Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 296EEE00970; Thu,  6 Apr 2017 01:37:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4A57E0095F
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 01:37:33 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 8D321265705
Message-ID: <1491467848.25991.32.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Thu, 06 Apr 2017 10:37:28 +0200
In-Reply-To: <20170406080805.9397.qmail@pro-236-209.rediffmailpro.com>
References: <20170406080805.9397.qmail@pro-236-209.rediffmailpro.com>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: unable to create softlink for precompilied libraries
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
X-List-Received-Date: Thu, 06 Apr 2017 08:37:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-04-06 at 08:08 +0000, chandrasekhar c wrote:
> Hi, 
> I have a third party precompilied libraries. I erota a recipe to copy to rootfs and create  soft
> links for the same. After doing bitbake it didnt throw any errors, but when I check th rootfs it
> didn't create any link file.
> Below is my recipe
>  
> do_install_append() {
>          install -d ${D}${libdir}/
>          install -m 0777 ${S}/libMSO.so.1.2 ${D}${libdir}/libMSO.so.1.2
>          ln -sf libMSO.so.1.2 ${D}${libdir}/libMSO.so
>          install -m 0777 ${S}/libMSOComm.so.1.2 ${D}${libdir}/libMSOComm.so.1.2 //This is success
>          ln -sf libMSOComm.so.1.2 ${D}${libdir}/libMSOComm.so.1 //This is success
>          ln -sf libMSOComm.so.1 ${D}${libdir}/libMSOComm.so //This is not happening
> }
> Can any one tell me a solution for this.

Did you ship it with FILES_${PN} += " ${libdir}/libMSOComm.so " ?


>  
> Thanks and Regards,
> Chandrasekhar

