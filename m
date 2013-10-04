Return-Path: <jose.ferreiro@horus.es>
Received: from correo.horus.es (correo.horus.es [2.139.157.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C57CE0161F
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 07:18:05 -0700 (PDT)
Received: from [172.30.250.61] (172.30.250.61) by horus27 (Axigen)
	with (CAMELLIA256-SHA encrypted) ESMTPSA id 19CDE3;
	Fri, 4 Oct 2013 16:18:02 +0200
Message-ID: <524ECE1A.7060409@horus.es>
Date: Fri, 04 Oct 2013 16:18:02 +0200
From: =?ISO-8859-1?Q?Jose_M=AA_Ferreiro?= <jose.ferreiro@horus.es>
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:16.0)
	Gecko/20121005 Thunderbird/16.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAMCfZKEZy-+xNxwnoOjt+wonqJq8RNQDpqFrYLdkPQj8ZP2yAw@mail.gmail.com>
In-Reply-To: <CAMCfZKEZy-+xNxwnoOjt+wonqJq8RNQDpqFrYLdkPQj8ZP2yAw@mail.gmail.com>
X-AxigenVirus-Level: 1
X-AxigenSpam-Level: 2
Subject: Re: meta-toolchain-qt with Qt Creator
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
X-List-Received-Date: Fri, 04 Oct 2013 14:18:08 -0000
Content-Type: multipart/alternative;
	boundary="------------030204090101050806040302"

--------------030204090101050806040302
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Hello Diego

We have had success doing a mix from these documents:
  - install host qt libraries: 
http://qt-project.org/doc/qt-4.8/install-x11.html
  - install host qt creator: 
http://labs.isee.biz/index.php/How_to_install_Qt_Creator#Configure_Yocto_SDK
  - yocto steps: https://community.freescale.com/thread/309578 ,

on a imx6Q Sabe Lite board being the host an Ubuntu 12.04.

Good luck


El 04/10/2013 14:45, Diego Sueiro escribió:
> Folks,
>
> After a lots of internet search, including this ML threads, i did not 
> find any solution for this.
>
> I'm having issues to integrate meta-toolchain-qt 
> and meta-toolchain-qte with Qt Creator 2.8.1.
> I'm using this environment:
>
>     Build Configuration:
>     BB_VERSION        = "1.18.0"
>     BUILD_SYS         = "x86_64-linux"
>     NATIVELSBSTRING   = "Ubuntu-12.10"
>     TARGET_SYS        = "arm-poky-linux-gnueabi"
>     MACHINE           = "beaglebone"
>     DISTRO            = "poky"
>     DISTRO_VERSION    = "1.4.2"
>     TUNE_FEATURES     = "armv7a vfp neon"
>     TARGET_FPU        = "vfp-neon"
>     meta
>     meta-yocto
>     meta-yocto-bsp    = "dylan:560fa9ad8dd46f23cff7a2e88a3492c363314b29"
>     meta-ti           = "dylan:24edd661d5e8fce3689bdd2c89e0105af8080152"
>
>
> When I configure the qmake path on Qt Creator I get the following message:
>
>     "Qt version is not properly installed please run make install"
>
>
> I've tried on dylan branch too, but no success.
>
> So, I tried to use Angstrom's setup-scripts 
> on angstrom-v2013.06-yocto1.4 branch. And it came with the issue 
> related with "error while loading shared libraries: __vdso_time: 
> invalid mode for dlopen(): Invalid argument". So, I switched to Fedora 
> 19 and it has gone, but the invalid Qt version problem remains.
>
> I tried, without success, to compile by myself the 
> qt-everywhere-opensource-src-4.8 these toolchains:
>
>     angstrom-eglibc-x86_64-cortexa8hf-vfp-neon-toolchain-qte-v2013.06
>     poky-eglibc-x86_64-arm-toolchain-qte-1.4.2
>
>
> If someone could successfully use meta-toolchain-qte with Qt Creator, 
> please point me the right directions to achieve this.
>
> I really need some help to get a qt4-embedded toolchain working.
>
> Kind Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--------------030204090101050806040302
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hello Diego<br>
    <br>
    We have had success doing a mix from these documents:<br>
    &nbsp;- install host qt libraries:
    <a class="moz-txt-link-freetext" href="http://qt-project.org/doc/qt-4.8/install-x11.html">http://qt-project.org/doc/qt-4.8/install-x11.html</a><br>
    &nbsp;- install host qt creator:
<a class="moz-txt-link-freetext" href="http://labs.isee.biz/index.php/How_to_install_Qt_Creator#Configure_Yocto_SDK">http://labs.isee.biz/index.php/How_to_install_Qt_Creator#Configure_Yocto_SDK</a><br>
    &nbsp;- yocto steps: <a class="moz-txt-link-freetext" href="https://community.freescale.com/thread/309578">https://community.freescale.com/thread/309578</a> , <br>
    <br>
    on a imx6Q Sabe Lite board being the host an Ubuntu 12.04.<br>
    <br>
    Good luck<br>
    <br>
    <br>
    <div class="moz-cite-prefix">El 04/10/2013 14:45, Diego Sueiro
      escribi&oacute;:<br>
    </div>
    <blockquote
cite="mid:CAMCfZKEZy-+xNxwnoOjt+wonqJq8RNQDpqFrYLdkPQj8ZP2yAw@mail.gmail.com"
      type="cite">
      <div dir="ltr">Folks,
        <div><br>
        </div>
        <div style="">After a lots of internet search, including this ML
          threads, i did not find any solution for this.</div>
        <div style=""><br>
        </div>
        <div style="">I'm having issues to integrate meta-toolchain-qt
          and&nbsp;meta-toolchain-qte with Qt Creator 2.8.1.</div>
        <div style="">I'm using this environment:</div>
        <div style="">
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">
            <div style="">
              <div>Build Configuration:</div>
              <div>BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;= "1.18.0"</div>
              <div>
                BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; = "x86_64-linux"</div>
              <div>NATIVELSBSTRING &nbsp; = "Ubuntu-12.10"</div>
              <div>TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp;= "arm-poky-linux-gnueabi"</div>
              <div>MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; = "beaglebone"</div>
              <div>DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;= "poky"</div>
              <div>DISTRO_VERSION &nbsp; &nbsp;= "1.4.2"</div>
              <div>TUNE_FEATURES &nbsp; &nbsp; = "armv7a vfp neon"</div>
              <div>TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;= "vfp-neon"</div>
              <div>meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
              <div>meta-yocto &nbsp; &nbsp; &nbsp; &nbsp;</div>
              <div>meta-yocto-bsp &nbsp; &nbsp;=
                "dylan:560fa9ad8dd46f23cff7a2e88a3492c363314b29"</div>
              <div>meta-ti &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
                "dylan:24edd661d5e8fce3689bdd2c89e0105af8080152"</div>
            </div>
          </blockquote>
        </div>
        <div style=""><br>
        </div>
        <div style="">When I configure the qmake path on Qt Creator I
          get the following message:</div>
        <div style="">
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">
            <div style="">"Qt version is not properly installed please
              run make install"</div>
          </blockquote>
        </div>
        <div style=""><br>
        </div>
        <div style="">I've tried on dylan branch too, but no success.</div>
        <div style=""><br>
        </div>
        <div style="">So, I tried to use Angstrom's setup-scripts
          on&nbsp;angstrom-v2013.06-yocto1.4 branch. And it came with the
          issue related with "<span
style="background-color:rgb(251,251,251);color:rgb(51,51,51);font-family:Helvetica,arial,freesans,clean,sans-serif;font-size:12.727272033691406px;line-height:20px">error
            while loading shared libraries: __vdso_time: invalid mode
            for dlopen(): Invalid argument". So, I switched to Fedora 19
            and it has gone, but the invalid Qt version problem remains.</span></div>
        <div style=""><span
style="background-color:rgb(251,251,251);color:rgb(51,51,51);font-family:Helvetica,arial,freesans,clean,sans-serif;font-size:12.727272033691406px;line-height:20px"><br>
          </span></div>
        <div style=""><span
style="background-color:rgb(251,251,251);color:rgb(51,51,51);font-family:Helvetica,arial,freesans,clean,sans-serif;font-size:12.727272033691406px;line-height:20px">I
            tried, without success, to compile by myself the&nbsp;</span><font
            color="#333333" face="Helvetica, arial, freesans, clean,
            sans-serif"><span style="line-height:20px">qt-everywhere-opensource-src-4.8
              these toolchains:</span></font></div>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <div style=""><font color="#333333" face="Helvetica, arial,
              freesans, clean, sans-serif"><span
                style="line-height:20px">angstrom-eglibc-x86_64-cortexa8hf-vfp-neon-toolchain-qte-v2013.06</span><br>
            </font></div>
          <div style=""><span
style="line-height:20px;color:rgb(51,51,51);font-family:Helvetica,arial,freesans,clean,sans-serif">poky-eglibc-x86_64-arm-toolchain-qte-1.4.2</span><br>
          </div>
        </blockquote>
        <font color="#333333" face="Helvetica, arial, freesans, clean,
          sans-serif"><span style="line-height:20px">
            <div style="">
              <br>
            </div>
          </span></font>
        <div style="">If someone could&nbsp;successfully use
          meta-toolchain-qte with Qt Creator, please point me the right
          directions to achieve this.&nbsp;</div>
        <div style=""><br>
        </div>
        <div style=""><span
style="background-color:rgb(251,251,251);color:rgb(51,51,51);font-family:Helvetica,arial,freesans,clean,sans-serif;font-size:12.727272033691406px;line-height:20px">I
            really need some help to get a qt4-embedded toolchain
            working.</span><br>
        </div>
        <div style=""><span
style="background-color:rgb(251,251,251);color:rgb(51,51,51);font-family:Helvetica,arial,freesans,clean,sans-serif;font-size:12.727272033691406px;line-height:20px"><br>
          </span></div>
        <div style="">Kind Regards,<br>
        </div>
        <div>
          <div>
            <div dir="ltr">
              <div><br>
              </div>
              --<br>
              *dS<br>
              Diego Sueiro<br>
              <br>
              /*long live rock 'n roll*/<br>
            </div>
          </div>
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
  </body>
</html>

--------------030204090101050806040302--
