Return-Path: <markus.eich@dfki.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1DDDE007D2; Tue, 12 Aug 2014 08:09:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	T_FILL_THIS_FORM_SHORT,T_HK_NAME_DR autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 T_HK_NAME_DR T_HK_NAME_DR
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from sea-mail.dfki.de (sea-mail.dfki.de [134.96.191.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93CDBE00796
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 08:09:51 -0700 (PDT)
Received: from sea-mail.dfki.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	105A2C75A8_3EA2E3EB; Tue, 12 Aug 2014 15:09:50 +0000 (GMT)
Received: from mail.dfki.de (lnv-104.sb.dfki.de [134.96.191.146])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by sea-mail.dfki.de (Sophos Email Appliance) with ESMTPS id
	C4A56C756B_3EA2E3DF; Tue, 12 Aug 2014 15:09:49 +0000 (GMT)
Received: from [10.250.3.118] (unknown [10.250.3.118])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mail.dfki.de (Postfix) with ESMTPSA id A6144310C2;
	Tue, 12 Aug 2014 17:09:49 +0200 (CEST)
Message-ID: <53EA2E3D.3080400@dfki.de>
Date: Tue, 12 Aug 2014 17:09:49 +0200
From: "Dr. Markus Eich" <markus.eich@dfki.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Rudolf Streif <rstreif@linuxfoundation.org>
References: <53E4D4A0.1030607@dfki.de>
	<CA+gsK-qsK4=R-a-TnCizz8_+1sWJ68zmh-zeYAK2UyBehDjp0w@mail.gmail.com>
In-Reply-To: <CA+gsK-qsK4=R-a-TnCizz8_+1sWJ68zmh-zeYAK2UyBehDjp0w@mail.gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: No network at startup using core-image-minimal
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
X-List-Received-Date: Tue, 12 Aug 2014 15:09:56 -0000
Content-Type: multipart/alternative;
	boundary="------------030801070401040501040909"

--------------030801070401040501040909
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Rudolf,

same result with the core-image-base.

It seems that depmod is not run before building the image/modules in the 
deploy folder. I have a custom kernel recipes. How can I make bitbake to 
run depmod -a on the rootfs?

My recipes inherits kernel

and requires

recipes-kernel/linux/linux-yocto.inc


Cheers,

Markus


On 08.08.2014 17:52, Rudolf Streif wrote:
>
> Hi Markus,
>
> Please try core-image-base instead of core-image-minimal. That should 
> provide you with the necessary network support.
>
> Best regards,
> Rudi
>
> On Aug 8, 2014 6:46 AM, "Dr. Markus Eich" <markus.eich@dfki.de 
> <mailto:markus.eich@dfki.de>> wrote:
>
>     Dear all,
>
>     I am setting up my Odroid XU with yocto using the
>     core-image-minimal receipe. Almost done and I am able to boot the
>     system and log in via screen (UART), but..
>
>     The network is not present at start-up. When I do lsmod I just see
>     "Not tainted" and no modules are loaded.
>
>     The module I need to load is the smsc95xx module. When I tried to
>     load the driver with "modpobe" it could not find the driver
>     (although it is in /lib/modules/3.4.98-custom/kernel/drivers/net/usb)
>     I had to manually add it to /lib/modules/3.4.98-custom/modules.dep
>     (which was empty after the bitbake process in rootfs)
>
>     So I added
>     "kernel/drivers/net/usb/smsc95xx.ko: " to modules.dep.
>
>     Then I could load it with modprobe. In order to load it at startup
>
>     I created a /etc/modules with the content "smsc95xx". Now my question:
>
>     Is there an easier (bitbake) way to make the modules load at
>     startup without editing configs on the target device? Am I missing
>     something? Does core-image-minimal not include network?
>
>     Cheers,
>
>     Markus
>
>
>
>
>     -- 
>     Dr.-Ing. Markus Eich
>
>      Senior Researcher
>      Marine Inspection Robotics
>      Space Robotics
>       Besuchsadresse der Nebengeschäftstelle:
>      DFKI GmbH
>      Robotics Innovation Center
>      Robert-Hooke-Straße 5
>      28359 Bremen, Germany
>       Postadresse der Hauptgeschäftsstelle Standort Bremen:
>      DFKI GmbH
>      Robotics Innovation Center
>      Robert-Hooke-Straße 1
>      28359 Bremen, Germany
>
>      Tel.: +49 421 178 45-4105 <tel:%2B49%20421%20178%2045-4105>
>      Zentrale: +49 421 178 45-0 <tel:%2B49%20421%20178%2045-0>
>      Fax: +49 421 178 45-4150 <tel:%2B49%20421%20178%2045-4150> (Faxe
>     bitte namentlich kennzeichnen)
>      E-Mail: markus.eich@dfki.de <mailto:markus.eich@dfki.de>
>
>      Weitere Informationen: http://www.dfki.de/robotik
>      -----------------------------------------------------------------------
>      Deutsches Forschungszentrum fuer Kuenstliche Intelligenz GmbH
>      Firmensitz: Trippstadter Straße 122, D-67663 Kaiserslautern
>      Geschaeftsfuehrung: Prof. Dr. Dr. h.c. mult. Wolfgang Wahlster
>      (Vorsitzender) Dr. Walter Olthoff
>      Vorsitzender des Aufsichtsrats: Prof. Dr. h.c. Hans A. Aukes
>      Amtsgericht Kaiserslautern, HRB 2313
>      Sitz der Gesellschaft: Kaiserslautern (HRB 2313)
>      USt-Id.Nr.:    DE 148646973
>      Steuernummer:  19/673/0060/3
>      -----------------------------------------------------------------------
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>

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


--------------030801070401040501040909
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi Rudolf,<br>
    <br>
    same result with the core-image-base.<br>
    <br>
    It seems that depmod is not run before building the image/modules in
    the deploy folder. I have a custom kernel recipes. How can I make
    bitbake to run depmod -a on the rootfs?<br>
    <br>
    My recipes inherits kernel<br>
    <br>
    and requires <br>
    <br>
    recipes-kernel/linux/linux-yocto.inc<br>
    <br>
    <br>
    Cheers,<br>
    <br>
    Markus<br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 08.08.2014 17:52, Rudolf Streif
      wrote:<br>
    </div>
    <blockquote
cite="mid:CA+gsK-qsK4=R-a-TnCizz8_+1sWJ68zmh-zeYAK2UyBehDjp0w@mail.gmail.com"
      type="cite">
      <p dir="ltr">Hi Markus, </p>
      <p dir="ltr">Please try core-image-base instead of
        core-image-minimal. That should provide you with the necessary
        network support. </p>
      <p dir="ltr">Best regards, <br>
        Rudi</p>
      <div class="gmail_quote">On Aug 8, 2014 6:46 AM, "Dr. Markus Eich"
        &lt;<a moz-do-not-send="true" href="mailto:markus.eich@dfki.de">markus.eich@dfki.de</a>&gt;
        wrote:<br type="attribution">
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          Dear all,<br>
          <br>
          I am setting up my Odroid XU with yocto using the
          core-image-minimal receipe. Almost done and I am able to boot
          the system and log in via screen (UART), but..<br>
          <br>
          The network is not present at start-up. When I do lsmod I just
          see "Not tainted" and no modules are loaded.<br>
          <br>
          The module I need to load is the smsc95xx module. When I tried
          to load the driver with "modpobe" it could not find the driver
          (although it is in /lib/modules/3.4.98-custom/kernel/drivers/net/usb)<br>
          I had to manually add it to /lib/modules/3.4.98-custom/modules.dep
          (which was empty after the bitbake process in rootfs)<br>
          <br>
          So I added<br>
          "kernel/drivers/net/usb/smsc95xx.ko: " to modules.dep.<br>
          <br>
          Then I could load it with modprobe. In order to load it at
          startup<br>
          <br>
          I created a /etc/modules with the content "smsc95xx". Now my
          question:<br>
          <br>
          Is there an easier (bitbake) way to make the modules load at
          startup without editing configs on the target device? Am I
          missing something? Does core-image-minimal not include
          network?<br>
          <br>
          Cheers,<br>
          <br>
          Markus<br>
          <br>
          <br>
          <br>
          <br>
          -- <br>
          Dr.-Ing. Markus Eich<br>
          <br>
           Senior Researcher<br>
           Marine Inspection Robotics<br>
           Space Robotics<br>
            Besuchsadresse der Nebengeschäftstelle:<br>
           DFKI GmbH<br>
           Robotics Innovation Center<br>
           Robert-Hooke-Straße 5<br>
           28359 Bremen, Germany<br>
            Postadresse der Hauptgeschäftsstelle Standort Bremen:<br>
           DFKI GmbH<br>
           Robotics Innovation Center<br>
           Robert-Hooke-Straße 1<br>
           28359 Bremen, Germany<br>
          <br>
           Tel.:     <a moz-do-not-send="true"
            href="tel:%2B49%20421%20178%2045-4105"
            value="+49421178454105" target="_blank">+49 421 178 45-4105</a><br>
           Zentrale: <a moz-do-not-send="true"
            href="tel:%2B49%20421%20178%2045-0" value="+49421178450"
            target="_blank">+49 421 178 45-0</a><br>
           Fax:      <a moz-do-not-send="true"
            href="tel:%2B49%20421%20178%2045-4150"
            value="+49421178454150" target="_blank">+49 421 178 45-4150</a>
          (Faxe bitte namentlich kennzeichnen)<br>
           E-Mail:   <a moz-do-not-send="true"
            href="mailto:markus.eich@dfki.de" target="_blank">markus.eich@dfki.de</a><br>
          <br>
           Weitere Informationen: <a moz-do-not-send="true"
            href="http://www.dfki.de/robotik" target="_blank">http://www.dfki.de/robotik</a><br>
           -----------------------------------------------------------------------<br>
           Deutsches Forschungszentrum fuer Kuenstliche Intelligenz GmbH<br>
           Firmensitz: Trippstadter Straße 122, D-67663 Kaiserslautern<br>
           Geschaeftsfuehrung: Prof. Dr. Dr. h.c. mult. Wolfgang
          Wahlster<br>
           (Vorsitzender) Dr. Walter Olthoff<br>
           Vorsitzender des Aufsichtsrats: Prof. Dr. h.c. Hans A. Aukes<br>
           Amtsgericht Kaiserslautern, HRB 2313<br>
           Sitz der Gesellschaft: Kaiserslautern (HRB 2313)<br>
           USt-Id.Nr.:    DE 148646973<br>
           Steuernummer:  19/673/0060/3<br>
           -----------------------------------------------------------------------<br>
          <br>
          -- <br>
          _______________________________________________<br>
          yocto mailing list<br>
          <a moz-do-not-send="true" href="mailto:yocto@yoctoproject.org"
            target="_blank">yocto@yoctoproject.org</a><br>
          <a moz-do-not-send="true"
            href="https://lists.yoctoproject.org/listinfo/yocto"
            target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
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
 E-Mail:   <a class="moz-txt-link-abbreviated" href="mailto:markus.eich@dfki.de">markus.eich@dfki.de</a>

 Weitere Informationen: <a class="moz-txt-link-freetext" href="http://www.dfki.de/robotik">http://www.dfki.de/robotik</a>
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
 -----------------------------------------------------------------------</pre>
  </body>
</html>

--------------030801070401040501040909--
