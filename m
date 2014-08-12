Return-Path: <markus.eich@dfki.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C64BBE0079A; Tue, 12 Aug 2014 10:58:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from sea-mail.dfki.de (sea-mail.dfki.de [134.96.191.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0997E00796
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 10:58:24 -0700 (PDT)
Received: from sea-mail.dfki.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	AD5F2C7B8F_3EA55BFB; Tue, 12 Aug 2014 17:58:23 +0000 (GMT)
Received: from mail.dfki.de (lnv-104.sb.dfki.de [134.96.191.146])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by sea-mail.dfki.de (Sophos Email Appliance) with ESMTPS id
	7B7B4C7B83_3EA55BFF; Tue, 12 Aug 2014 17:58:23 +0000 (GMT)
Received: from [192.168.178.38] (ip4d155432.dynamic.kabel-deutschland.de
	[77.21.84.50])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mail.dfki.de (Postfix) with ESMTPSA id 4C099310C2;
	Tue, 12 Aug 2014 19:58:23 +0200 (CEST)
Message-ID: <53EA55C0.6050600@dfki.de>
Date: Tue, 12 Aug 2014 19:58:24 +0200
From: Markus Eich <markus.eich@dfki.de>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Rudolf Streif <rstreif@linuxfoundation.org>
References: <53E4D4A0.1030607@dfki.de>	<CA+gsK-qsK4=R-a-TnCizz8_+1sWJ68zmh-zeYAK2UyBehDjp0w@mail.gmail.com>	<53EA2E3D.3080400@dfki.de>
	<CA+gsK-oAVkqCNfU9r4CyyLvo0z3Q3N8BBa2zFz1WQj1nFpn7Aw@mail.gmail.com>
In-Reply-To: <CA+gsK-oAVkqCNfU9r4CyyLvo0z3Q3N8BBa2zFz1WQj1nFpn7Aw@mail.gmail.com>
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
X-List-Received-Date: Tue, 12 Aug 2014 17:58:27 -0000
Content-Type: multipart/alternative;
	boundary="------------050600020305060106010101"

--------------050600020305060106010101
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Thank you for the info.

Solved it the following way:

I added

IMAGE_INSTALL += "kernel_modules" to my local.conf.

Now SMSC95xx (plus some other modules, like joydrive) are autoloaded on 
boot.

Cheers,

Markus

Am 12.08.2014 um 18:56 schrieb Rudolf Streif:

> Hi Markus,
>
>     same result with the core-image-base.
>
>     It seems that depmod is not run before building the image/modules
>     in the deploy folder. I have a custom kernel recipes. How can I
>     make bitbake to run depmod -a on the rootfs?
>
>     My recipes inherits kernel
>
>     and requires
>
>     recipes-kernel/linux/linux-yocto.inc
>
>
> Ok, in this case you want to use
>
>   module_autoload_<modname> = "modname1 modname2 modname3"
> in your kernel recipe (or distro or machine configuration which is actually preferable). For example
> module_autoload_smsc95xx = "smsc95xx"
> The module-split class should pick it up and add the module to /etc/modules-load.d/modname.conf.
> Cheers,
> Rudi


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


--------------050600020305060106010101
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Thank you for the info.<br>
      <br>
      Solved it the following way:<br>
      <br>
      I added <br>
      <br>
      IMAGE_INSTALL += "kernel_modules" to my local.conf.<br>
      <br>
      Now SMSC95xx (plus some other modules, like joydrive) are
      autoloaded on boot.<br>
      <br>
      Cheers,<br>
      <br>
      Markus<br>
      <br>
      <pre class="" style="overflow:auto">
Am 12.08.2014 um 18:56 schrieb Rudolf Streif:
</pre>
    </div>
    <blockquote
cite="mid:CA+gsK-oAVkqCNfU9r4CyyLvo0z3Q3N8BBa2zFz1WQj1nFpn7Aw@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi Markus,
        <div class="gmail_extra">
          <div class="gmail_quote">
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
              <div bgcolor="#FFFFFF" text="#000000">same result with the
                core-image-base.<br>
                <br>
                It seems that depmod is not run before building the
                image/modules in the deploy folder. I have a custom
                kernel recipes. How can I make bitbake to run depmod -a
                on the rootfs?<br>
                <br>
                My recipes inherits kernel<br>
                <br>
                and requires <br>
                <br>
                recipes-kernel/linux/linux-yocto.inc<br>
                <br>
              </div>
            </blockquote>
            <div><br>
            </div>
            <div>Ok, in this case you want to use</div>
            <div><br>
            </div>
            <div>
              <pre class="" style="overflow:auto;color:rgb(51,51,51)"> module_autoload_&lt;modname&gt; = "modname1 modname2 modname3"</pre>
              <pre class="" style="overflow:auto;color:rgb(51,51,51)">in your kernel recipe (or distro or machine configuration which is actually preferable). For example</pre>
              <pre class="" style="overflow:auto"><font face="arial, sans-serif"><span style="white-space:normal">module_autoload_</span></font><span style="font-size:12.727272033691406px;font-family:arial,sans-serif">smsc95</span><span style="font-size:12.727272033691406px;font-family:arial,sans-serif">xx = "</span><span style="font-size:12.727272033691406px;font-family:arial,sans-serif">smsc95</span><span style="font-size:12.727272033691406px;font-family:arial,sans-serif">xx"</span></pre>
              <pre class="" style="overflow:auto"><span style="font-size:12.727272033691406px;font-family:arial,sans-serif">The module-split class should pick it up and add the module to /etc/modules-load.d/modname.conf.</span></pre>
              <pre class="" style="overflow:auto">Cheers,</pre>
              <pre class="" style="overflow:auto">Rudi</pre>
            </div>
            <div> </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
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

--------------050600020305060106010101--
