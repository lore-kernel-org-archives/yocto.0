Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEEE4E00B18; Sat, 17 Jun 2017 03:47:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36B9AE00A16
	for <yocto@yoctoproject.org>; Sat, 17 Jun 2017 03:47:31 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1dMBGF-0004ss-65
	for yocto@yoctoproject.org; Sat, 17 Jun 2017 12:47:23 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Ferry Toth <ftoth@exalondelft.nl>
Date: Sat, 17 Jun 2017 10:47:13 +0000 (UTC)
Message-ID: <oi31bh$7am$1@blaine.gmane.org>
References: <0CF626E6464FB94BB209647252516D85832DF9@srv-exchange.madelin.fr>
	<6107fcea-69d9-bc3c-7f44-a2e3f7178045@gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Pan/0.141 (Tarzan's Death; 168b179 git.gnome.org/pan2)
Subject: Re: Qt5 will not build on Yocto edison image
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
X-List-Received-Date: Sat, 17 Jun 2017 10:47:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

I'm interrested in this too.

Edison has no display. So I think the question is what DISTRO_FEATURES to 
set.

As it is now, the following error occurs:
EGL disabled.
| Warning: Disabling Accessibility. This version of Qt is unsupported.
| No QPA platform plugin enabled!
|  If you really want to build without a QPA platform plugin you must pass
|  -no-qpa-platform-guard to configure. Doing this will
|  produce a Qt that can not run GUI applications.
|  The dependencies needed for xcb to build are listed in
|  src/plugins/platforms/xcb/README

However I don't think the layer has any PACKAGECONFIG that sets -no-qpa-
platform-guard.

So, what DISTRO_FEATURES need to be set to get a non-GUI Qt that runs on 
a headless server?

Op Thu, 15 Jun 2017 22:58:32 -0700, schreef Khem Raj:

> On 6/15/17 6:30 AM, Franck Furic wrote:
>> Hi,
>> 
>> 
>>  
>> I have bought an Intel Edison board and I would like build my image
>> including Qt Framework (meta-qt5).
>> 
>> 
>>  
>> In the past, (2 years ago) I have success to compile C++ program using
>> Qt by build my image with meta-qt5 I think it was 1.6.x version of
>> yocto project.
>> 
>> 
>>  
>> Now, it’s impossible for me to build an image including qt on yocto. I
>> have tried many thinks in different ways but nothing at the end.
>> 
>> 
>>  
>> Some people help me to do this here
>> https://communities.intel.com/thread/115234.
>> 
>> 
>>  
>> I have tried on dizzy branch and morty branch but i have always errors.
>> 
>> 
>>  
>> Someone can help me tell me the correct procedure to build an image
>> containing meta-qt5 on any version of yocto.
>> 
>> 
>>  
>> I need to develop some code with Qt Framework.
> 
> you can add the needed bits to image yourself. Like
> 
> IMAGE_INSTALL_append = "\
>     qtbase \ qtbase-tools \ qtbase-fonts \ qtbase-plugins \ qtwebkit \
>     qtwayland \ qtwayland-plugins \ cinematicexperience \
> "
> 
> in local.conf
> 
> 
> 
> 
>> 
>>  
>> 
>>  
>> Description : FranckFuric
>> 
>> 
>>  
>> Description : Facebook <https://www.facebook.com/madelin.sa.france>
>> Description : youtube-logo <https://www.youtube.com/user/MADELINSA49>  
>>  Site web :
>> www.madelin-sa.com <http://www.madelin-sa.com/>  |  E-boutique :
>> www.storemadelin-sa.com <http://www.storemadelin-sa.com/>
>> 
>> 
______________________________________________________________________________________________
>> 
>> Ce message contient des informations confidentielles ou appartenant à
>> la société MADELIN SA et est établi à l'attention  exclusive de ses
>> destinataires.
>> 
>> Toute divulgation, utilisation, diffusion ou reproduction (totale ou
>> partielle) de ce message, ou des informations qu'il contient, doit être
>> préalablement autorisée.
>> 
>> Si vous n'êtes pas destinataire de ce message, merci de le détruire
>> immédiatement et d'avertir l'expéditeur de l'erreur de distribution et
>> de la destruction du message
>> 
>> 
>>  
>> 
>>



