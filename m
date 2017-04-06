Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB76DE00985; Thu,  6 Apr 2017 02:51:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75DA4E0095F
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 02:51:04 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 263C1265710
Message-ID: <1491472260.25991.41.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: chandrasekhar c <chandrasekhar@evolute-sys.com>
Date: Thu, 06 Apr 2017 11:51:00 +0200
In-Reply-To: <1491469744.S.10166.2428.pro-237-142.1491470210.30755@webmail.rediffmail.com>
References: <1491469744.S.10166.2428.pro-237-142.1491470210.30755@webmail.rediffmail.com>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 06 Apr 2017 09:51:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Can you check that the file is installed in image folder and in package in the WORKDIR of your
recipe?

On Thu, 2017-04-06 at 09:16 +0000, chandrasekhar c wrote:
> Hi,
> I have added this FILES_${PN} += " ${libdir}/libMSOComm.so " line in my recipe still the issue is
> present
> 
> Thanks 
> Chandra
> 
> From: chandrasekhar c <chandrasekhar@evolute-sys.com>
> Sent: Thu, 6 Apr 2017 14:39:04 GMT+0530
> To: "Fabien Lahoudere " <fabien.lahoudere@collabora.co.uk>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] unable to create softlink for precompilied libraries
> 
> Hi ,
> No, I will do the changes and let you know the result.
> 
> Regards,
> Chandrasekhar
> 
> From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
> Sent: Thu, 6 Apr 2017 14:10:30 GMT+0530
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] unable to create softlink for precompilied libraries
> 
> On Thu, 2017-04-06 at 08:08 +0000, chandrasekhar c wrote:
> > Hi,  
> > I have a third party precompilied libraries. I erota a recipe to copy to rootfs and create  
> soft
> > links for the same. After doing bitbake it didnt throw any errors, but when I check th rootfs it
> > didn't create any link file.
> > Below is my recipe
> >  
> > do_install_append() {
> >                   install -d ${D}${libdir}/
> >                 install -m 0777 ${S}/libMSO.so.1.2 ${D}${libdir}/libMSO.so.1.2
> >                 ln -sf libMSO.so.1.2 ${D}${libdir}/libMSO.so
> >                 install -m 0777 ${S}/libMSOComm.so.1.2 ${D}${libdir}/libMSOComm.so.1.2 //This is
> success
> >                 ln -sf libMSOComm.so.1.2 ${D}${libdir}/libMSOComm.so.1 //This is success
> >                 ln -sf libMSOComm.so.1  ${D}${libdir}/libMSOComm.so //This is not happening
> > }
> > Can any one tell me a solution for this.
> 
> Did you ship it with FILES_${PN} += " ${libdir}/libMSOComm.so " ?
> 
> 
> >  
> > Thanks and Regards,
> > Chandrasekhar
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

