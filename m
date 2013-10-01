Return-Path: <diego.gonzalez@horus.es>
Received: from correo.horus.es (correo.horus.es [2.139.157.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3F59E01626
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 01:12:07 -0700 (PDT)
Received: from [172.30.250.16] (172.30.250.254) by horus27 (Axigen)
	with (CAMELLIA256-SHA encrypted) ESMTPSA id 0FFAC3;
	Tue, 1 Oct 2013 10:12:04 +0200
Message-ID: <524A83D1.70705@horus.es>
Date: Tue, 01 Oct 2013 10:12:01 +0200
From: diego <diego.gonzalez@horus.es>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:17.0)
	Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CABHD4K-2dfbGYj6p13C=uYXS4pzLGQ+NZaV_PkqahKu_zknJjg@mail.gmail.com>
In-Reply-To: <CABHD4K-2dfbGYj6p13C=uYXS4pzLGQ+NZaV_PkqahKu_zknJjg@mail.gmail.com>
X-AxigenVirus-Level: 1
X-AxigenSpam-Level: 4
Subject: Re: Provide sftp-client support in yocto
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
X-List-Received-Date: Tue, 01 Oct 2013 08:12:10 -0000
Content-Type: multipart/alternative;
	boundary="------------030102090402010702030108"

--------------030102090402010702030108
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

El 01/10/2013 9:52, Amit Tomer escribió:
> I am new to OpenEmbedded Yocto project and have a requirement to provide
> sftp-client support on my target board.
>
> Sftp-server bins are already packed into final image and is installed at
>
> tmp/work/fkm-poky-linux-gnueabi/openssh/6.1p1-r3/package/usr/lib/openssh/sftp-server
>
> Now ,same way Do I have to install stfp client bins also or is there 
> any other way to go about it??
>
> Thanks
> Amit
>
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

I had the same problem and I posted this solution:

https://lists.yoctoproject.org/pipermail/yocto/2013-September/018477.html

Regards



-- 
Diego González González
Dpto. de Control Industrial
HORUS HARDWARE S.A.
diego.gonzalez@horus.es


--------------030102090402010702030108
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">El 01/10/2013 9:52, Amit Tomer
      escribi&oacute;:<br>
    </div>
    <blockquote
cite="mid:CABHD4K-2dfbGYj6p13C=uYXS4pzLGQ+NZaV_PkqahKu_zknJjg@mail.gmail.com"
      type="cite">
      <div dir="ltr">I am new to OpenEmbedded Yocto project and have a
        requirement to provide
        <div style="">sftp-client support on my target board.</div>
        <div style=""><br>
        </div>
        <div style="">Sftp-server bins are already packed into final
          image and is installed at</div>
        <div style=""><br>
        </div>
        <div style="">tmp/work/fkm-poky-linux-gnueabi/openssh/6.1p1-r3/package/usr/lib/openssh/sftp-server<br>
        </div>
        <div style=""><br>
        </div>
        <div style="">Now ,same way Do I have to install stfp client
          bins also or is there any other way to go about it??</div>
        <div style=""><br>
        </div>
        <div style="">Thanks</div>
        <div style="">Amit&nbsp;</div>
        <div style=""><br>
        </div>
        <div style=""><br>
        </div>
        <div style=""><br>
        </div>
        <div style=""><br>
        </div>
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
    I had the same problem and I posted this solution:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/pipermail/yocto/2013-September/018477.html">https://lists.yoctoproject.org/pipermail/yocto/2013-September/018477.html</a><br>
    <br>
    Regards<br>
    <br>
    <br>
    <br>
    <pre class="moz-signature" cols="72">-- 
Diego Gonz&aacute;lez Gonz&aacute;lez
Dpto. de Control Industrial
HORUS HARDWARE S.A.
<a class="moz-txt-link-abbreviated" href="mailto:diego.gonzalez@horus.es">diego.gonzalez@horus.es</a></pre>
  </body>
</html>

--------------030102090402010702030108--
