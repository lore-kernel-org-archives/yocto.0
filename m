Return-Path: <markus.eich@dfki.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 378DEE00655; Fri,  8 Aug 2014 06:46:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,T_HK_NAME_DR
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000] *  0.0 T_HK_NAME_DR T_HK_NAME_DR
Received: from sea-mail.dfki.de (sea-mail.dfki.de [134.96.191.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 586B3E0082A
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 06:46:10 -0700 (PDT)
Received: from sea-mail.dfki.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	C77709E73E_3E4D4A0B
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 13:46:08 +0000 (GMT)
Received: from mail.dfki.de (lnv-104.sb.dfki.de [134.96.191.146])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by sea-mail.dfki.de (Sophos Email Appliance) with ESMTPS id
	A52919D2D8_3E4D4A0F
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 13:46:08 +0000 (GMT)
Received: from [10.250.3.118] (unknown [10.250.3.118])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mail.dfki.de (Postfix) with ESMTPSA id 89F6231188
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 15:46:08 +0200 (CEST)
Message-ID: <53E4D4A0.1030607@dfki.de>
Date: Fri, 08 Aug 2014 15:46:08 +0200
From: "Dr. Markus Eich" <markus.eich@dfki.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: No network at startup using core-image-minimal
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
X-List-Received-Date: Fri, 08 Aug 2014 13:46:19 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear all,

I am setting up my Odroid XU with yocto using the core-image-minimal 
receipe. Almost done and I am able to boot the system and log in via 
screen (UART), but..

The network is not present at start-up. When I do lsmod I just see "Not 
tainted" and no modules are loaded.

The module I need to load is the smsc95xx module. When I tried to load 
the driver with "modpobe" it could not find the driver (although it is 
in /lib/modules/3.4.98-custom/kernel/drivers/net/usb)
I had to manually add it to /lib/modules/3.4.98-custom/modules.dep 
(which was empty after the bitbake process in rootfs)

So I added
"kernel/drivers/net/usb/smsc95xx.ko: " to modules.dep.

Then I could load it with modprobe. In order to load it at startup

I created a /etc/modules with the content "smsc95xx". Now my question:

Is there an easier (bitbake) way to make the modules load at startup 
without editing configs on the target device? Am I missing something? 
Does core-image-minimal not include network?

Cheers,

Markus




-- 
Dr.-Ing. Markus Eich

  Senior Researcher
  Marine Inspection Robotics
  Space Robotics
  
  Besuchsadresse der Nebengeschäftstelle:
  DFKI GmbH
  Robotics Innovation Center
  Robert-Hooke-Straße 5
  28359 Bremen, Germany
  
  Postadresse der Hauptgeschäftsstelle Standort Bremen:
  DFKI GmbH
  Robotics Innovation Center
  Robert-Hooke-Straße 1
  28359 Bremen, Germany

  Tel.:     +49 421 178 45-4105
  Zentrale: +49 421 178 45-0
  Fax:      +49 421 178 45-4150 (Faxe bitte namentlich kennzeichnen)
  E-Mail:   markus.eich@dfki.de

  Weitere Informationen: http://www.dfki.de/robotik
  -----------------------------------------------------------------------
  Deutsches Forschungszentrum fuer Kuenstliche Intelligenz GmbH
  Firmensitz: Trippstadter Straße 122, D-67663 Kaiserslautern
  Geschaeftsfuehrung: Prof. Dr. Dr. h.c. mult. Wolfgang Wahlster
  (Vorsitzender) Dr. Walter Olthoff
  Vorsitzender des Aufsichtsrats: Prof. Dr. h.c. Hans A. Aukes
  Amtsgericht Kaiserslautern, HRB 2313
  Sitz der Gesellschaft: Kaiserslautern (HRB 2313)
  USt-Id.Nr.:    DE 148646973
  Steuernummer:  19/673/0060/3
  -----------------------------------------------------------------------


