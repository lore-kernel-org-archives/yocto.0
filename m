Return-Path: <diego.gonzalez@horus.es>
Received: from correo.horus.es (correo.horus.es [2.139.157.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C617E0169D
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 01:47:19 -0700 (PDT)
Received: from [172.30.250.16] (172.30.250.254) by horus27 (Axigen)
	with (CAMELLIA256-SHA encrypted) ESMTPSA id 2125FB;
	Thu, 3 Oct 2013 10:47:15 +0200
Message-ID: <524D2F12.2050105@horus.es>
Date: Thu, 03 Oct 2013 10:47:14 +0200
From: diego <diego.gonzalez@horus.es>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:17.0)
	Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAOEdsErrXc4J-27Qq7v5wSVg63vx3=d1RJZ2C=bMW2SWdFa+TQ@mail.gmail.com>
In-Reply-To: <CAOEdsErrXc4J-27Qq7v5wSVg63vx3=d1RJZ2C=bMW2SWdFa+TQ@mail.gmail.com>
X-AxigenVirus-Level: 1
X-AxigenSpam-Level: 4
Subject: Re: nativesdk-dbus not shipped for meta-toolchain-qt
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
X-List-Received-Date: Thu, 03 Oct 2013 08:47:21 -0000
Content-Type: multipart/alternative;
	boundary="------------050202030708050709070201"

--------------050202030708050709070201
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

El 02/10/2013 23:26, Dan B escribió:
> I was having a similar error, and sgw_ in the #yocto irc channel 
> helped me out. It looks like there is some bug in nativesdk-dbus
> A quick-fix until someone can figure out what's going on is to add the 
> following line to your local.conf:
>
> INSANE_SKIP_nativesdk-dbus = "installed-vs-shipped"
>
>
> All this does is skip the QA test that is failing. I haven't yet 
> checked the result to see if it's working, but it at least was able to 
> skip that QA test and build successfully.
>
> Good luck
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hello Dryaw,

I just checked what you said and it works! It skipped that QA test and 
built perfectly. Additionally if you install this sdk into the Qt 
creator it will work fine. I created, built, compiled and debugged and 
app in QT 4.8.5  successfully.

Thank you!!

-- 
Diego González González
diego.gonzalez@horus.es


--------------050202030708050709070201
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">El 02/10/2013 23:26, Dan B escribi&oacute;:<br>
    </div>
    <blockquote
cite="mid:CAOEdsErrXc4J-27Qq7v5wSVg63vx3=d1RJZ2C=bMW2SWdFa+TQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">I was having a similar error, and&nbsp;sgw_ in the
        #yocto irc channel helped me out. It looks like there is some
        bug in nativesdk-dbus&nbsp;
        <div>A quick-fix until someone can figure out what's going on is
          to add the following line to your local.conf:</div>
        <div><br>
        </div>
        <div>INSANE_SKIP_nativesdk-dbus = "installed-vs-shipped"<br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>All this does is skip the QA test that is failing. I
          haven't yet checked the result to see if it's working, but it
          at least was able to skip that QA test and build successfully.</div>
        <div><br>
        </div>
        <div>Good luck</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
    Hello Dryaw,<br>
    <br>
    I just checked what you said and it works! It skipped that QA test&nbsp;
    and built perfectly. A<span class="gt-baf-back">dditionally if you
      install this sdk into the Qt creator it will work fine. I created,
      built, compiled and debugged and app </span><span
      class="gt-baf-back">
      <link rel="File-List"
href="file:///C:%5CUsers%5CHorusHP%5CAppData%5CLocal%5CTemp%5Cmsohtmlclip1%5C02%5Cclip_filelist.xml">
      <link rel="themeData"
href="file:///C:%5CUsers%5CHorusHP%5CAppData%5CLocal%5CTemp%5Cmsohtmlclip1%5C02%5Cclip_themedata.thmx">
      <link rel="colorSchemeMapping"
href="file:///C:%5CUsers%5CHorusHP%5CAppData%5CLocal%5CTemp%5Cmsohtmlclip1%5C02%5Cclip_colorschememapping.xml">
      in QT 4.8.5&nbsp; successfully.<br>
      <br>
      Thank you!!</span><br>
    <br>
    <pre class="moz-signature" cols="72">-- 
Diego Gonz&aacute;lez Gonz&aacute;lez
<a class="moz-txt-link-abbreviated" href="mailto:diego.gonzalez@horus.es">diego.gonzalez@horus.es</a></pre>
  </body>
</html>

--------------050202030708050709070201--
