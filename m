Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24EA1E00D00; Wed,  6 Dec 2017 04:20:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A816CE00B5F
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 04:20:06 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id vB6CK4mm007615
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Wed, 6 Dec 2017 14:20:04 +0200
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <24c7418f-b077-f224-2cc8-ce399a2967db@vitheia.com>
	<CAGAf8LwLZWp7x+O=wvyXb3Vm-7p0TT7hBaEkNCgrB80OYTN2bQ@mail.gmail.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <5ffc9929-5b23-8146-5ae0-baacd73816ca@vitheia.com>
Date: Wed, 6 Dec 2017 14:20:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAGAf8LwLZWp7x+O=wvyXb3Vm-7p0TT7hBaEkNCgrB80OYTN2bQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: bitbake menuconfig fails
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
X-List-Received-Date: Wed, 06 Dec 2017 12:20:09 -0000
Content-Type: multipart/alternative;
	boundary="------------F025EF03D493D21D1A7FACAD"
Content-Language: en-US

--------------F025EF03D493D21D1A7FACAD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Thanks Zoran
What you say makes perfect sense.
I also got the feeling that something doesn't match between the new 
kernel and yocto.
Maybe I should also upgrade yocto.

Thanks again.

On 06/12/17 09:22, Zoran Stojsavljevic wrote:
> Hello Mircea,
>
> From my point of view:
>
> /_> /usr/bin/ld: cannot find -lncursesw_/
> > collect2: error: ld returned 1 exit status
> > scripts/Makefile.host:111: recipe for target 'scripts/kconfig/mconf' failed
>
> The first line explains it all. You could not configure 4.14, since 
> for this you should have ncurses package. I would further say, the
> YOCTO ncurses version you have, which is used for 4.8 is outdated, so 
> you need newer (matching) YOCTO version for 4.14.
>
> Why you are able to configure 4.14 outside of yocto? Because you use 
> another version of ncurses, one which is host native to
> Debian 8. YOCTO probably uses some other host based ncurses inside 
> YOCTO (in Open Embedded/meta layer, my best guess).
>
> Zoran
>
> On Wed, Dec 6, 2017 at 7:31 AM, Mircea Gliga <mircea.gliga@vitheia.com 
> <mailto:mircea.gliga@vitheia.com>> wrote:
>
>     Hello
>
>     We are using in our layer a kernel 4.8 recipe (linux-stable_4.8.bb
>     <http://linux-stable_4.8.bb>)- everything ok.
>     I'm trying to upgrade to 4.14, I created a new recipe
>     linux-stable_4.14.bb <http://linux-stable_4.14.bb>. They live side
>     by side, for now.
>     But with the 4.14 kernel when running `bitbake -c menuconfig
>     linux-stable`, the new terminal comes up and I get the following
>     error:
>
>       HOSTCC  scripts/basic/fixdep
>       GEN     ./Makefile
>       HOSTCC  scripts/kconfig/mconf.o
>       HOSTCC  scripts/kconfig/zconf.tab.o
>       HOSTCC  scripts/kconfig/lxdialog/checklist.o
>       HOSTCC  scripts/kconfig/lxdialog/util.o
>       HOSTCC  scripts/kconfig/lxdialog/inputbox.o
>       HOSTCC  scripts/kconfig/lxdialog/textbox.o
>       HOSTCC  scripts/kconfig/lxdialog/yesno.o
>       HOSTCC  scripts/kconfig/lxdialog/menubox.o
>       HOSTLD  scripts/kconfig/mconf
>     /usr/bin/ld: cannot find -lncursesw
>     collect2: error: ld returned 1 exit status
>     scripts/Makefile.host:111: recipe for target
>     'scripts/kconfig/mconf' failed
>     make[3]: *** [scripts/kconfig/mconf] Error 1
>     /media/mircea/ExtLinux/Adventure/testBuildServer/product-sama5-kernel/yocto/build/tmp/work-shared/cuxe/kernel-source/Makefile:548:
>     recipe for target 'menuconfig' failed
>     make[2]: *** [menuconfig] Error 2
>     Makefile:146: recipe for target 'sub-make' failed
>     make[1]: *** [sub-make] Error 2
>     Makefile:24: recipe for target '__sub-make' failed
>     make: *** [__sub-make] Error 2
>     Command failed.
>
>
>     If I rename linux-stable_4.14.bb <http://linux-stable_4.14.bb> to
>     linux-stable_4.14.bb___, then run bitbake again (now the build
>     system is working with the 4.8 kernel again) => menuconfig starts
>     and works as expected.
>
>     I'm using krogoth, 2.1.2, Debian 8 (jessie)
>
>     I also tried to config the kernel outside of yocto, downloaded
>     https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.4.tar.xz
>     <https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.4.tar.xz>,
>     extracted and run make menuconfig => works as expected
>
>     Any hints are appreciated.
>
>     Thanks
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>
>


--------------F025EF03D493D21D1A7FACAD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Thanks Zoran<br>
    What you say makes perfect sense. <br>
    I also got the feeling that something doesn't match between the new
    kernel and yocto. <br>
    Maybe I should also upgrade yocto.<br>
    <br>
    Thanks again.<br>
    <br>
    <div class="moz-cite-prefix">On 06/12/17 09:22, Zoran Stojsavljevic
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAGAf8LwLZWp7x+O=wvyXb3Vm-7p0TT7hBaEkNCgrB80OYTN2bQ@mail.gmail.com">
      <div dir="ltr">Hello Mircea,
        <div><br>
        </div>
        <div>From my point of view:</div>
        <div><br>
        </div>
        <div><i><u>&gt; <span style="font-size:12.8px">/usr/bin/ld:
                cannot find -lncursesw</span></u></i></div>
        <span style="font-size:12.8px">&gt; collect2: error: ld returned
          1 exit status</span><br style="font-size:12.8px">
        <span style="font-size:12.8px">&gt; scripts/Makefile.host:111:
          recipe for target 'scripts/kconfig/mconf' failed</span>
        <div><span style="font-size:12.8px"><br>
          </span></div>
        <div><span style="font-size:12.8px">The first line explains it
            all. You could not configure 4.14, since for this you should
            have ncurses package. I would further say, the</span></div>
        <div><span style="font-size:12.8px">YOCTO ncurses version you
            have, which is used for 4.8 is outdated, so you need newer
            (matching) YOCTO version for 4.14.</span></div>
        <div><span style="font-size:12.8px"><br>
          </span></div>
        <div><span style="font-size:12.8px">Why you are able to
            configure 4.14 outside of yocto? Because you use another
            version of ncurses, one which is host native to</span></div>
        <div><span style="font-size:12.8px">Debian 8. YOCTO probably
            uses some other host based ncurses inside YOCTO (in Open
            Embedded/meta layer, my best guess).</span></div>
        <div><span style="font-size:12.8px"><br>
          </span></div>
        <div><span style="font-size:12.8px">Zoran</span></div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On Wed, Dec 6, 2017 at 7:31 AM, Mircea
          Gliga <span dir="ltr">&lt;<a
              href="mailto:mircea.gliga@vitheia.com" target="_blank"
              moz-do-not-send="true">mircea.gliga@vitheia.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello<br>
            <br>
            We are using in our layer a kernel 4.8 recipe (<a
              href="http://linux-stable_4.8.bb" rel="noreferrer"
              target="_blank" moz-do-not-send="true">linux-stable_4.8.bb</a>)-
            everything ok.<br>
            I'm trying to upgrade to 4.14, I created a new recipe <a
              href="http://linux-stable_4.14.bb" rel="noreferrer"
              target="_blank" moz-do-not-send="true">linux-stable_4.14.bb</a>.
            They live side by side, for now.<br>
            But with the 4.14 kernel when running `bitbake -c menuconfig
            linux-stable`, the new terminal comes up and I get the
            following error:<br>
            <br>
              HOSTCC  scripts/basic/fixdep<br>
              GEN     ./Makefile<br>
              HOSTCC  scripts/kconfig/mconf.o<br>
              HOSTCC  scripts/kconfig/zconf.tab.o<br>
              HOSTCC  scripts/kconfig/lxdialog/check<wbr>list.o<br>
              HOSTCC  scripts/kconfig/lxdialog/util.<wbr>o<br>
              HOSTCC  scripts/kconfig/lxdialog/input<wbr>box.o<br>
              HOSTCC  scripts/kconfig/lxdialog/textb<wbr>ox.o<br>
              HOSTCC  scripts/kconfig/lxdialog/yesno<wbr>.o<br>
              HOSTCC  scripts/kconfig/lxdialog/menub<wbr>ox.o<br>
              HOSTLD  scripts/kconfig/mconf<br>
            /usr/bin/ld: cannot find -lncursesw<br>
            collect2: error: ld returned 1 exit status<br>
            scripts/Makefile.host:111: recipe for target
            'scripts/kconfig/mconf' failed<br>
            make[3]: *** [scripts/kconfig/mconf] Error 1<br>
            /media/mircea/ExtLinux/Adventu<wbr>re/testBuildServer/product-<wbr>sama5-kernel/yocto/build/tmp/<wbr>work-shared/cuxe/kernel-<wbr>source/Makefile:548:
            recipe for target 'menuconfig' failed<br>
            make[2]: *** [menuconfig] Error 2<br>
            Makefile:146: recipe for target 'sub-make' failed<br>
            make[1]: *** [sub-make] Error 2<br>
            Makefile:24: recipe for target '__sub-make' failed<br>
            make: *** [__sub-make] Error 2<br>
            Command failed.<br>
            <br>
            <br>
            If I rename <a href="http://linux-stable_4.14.bb"
              rel="noreferrer" target="_blank" moz-do-not-send="true">linux-stable_4.14.bb</a>
            to linux-stable_4.14.bb___, then run bitbake again (now the
            build system is working with the 4.8 kernel again) =&gt;
            menuconfig starts and works as expected.<br>
            <br>
            I'm using krogoth, 2.1.2, Debian 8 (jessie)<br>
            <br>
            I also tried to config the kernel outside of yocto,
            downloaded <a
              href="https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.4.tar.xz"
              rel="noreferrer" target="_blank" moz-do-not-send="true">https://cdn.kernel.org/pub/lin<wbr>ux/kernel/v4.x/linux-4.14.4.<wbr>tar.xz</a>,
            extracted and run make menuconfig =&gt; works as expected<br>
            <br>
            Any hints are appreciated.<br>
            <br>
            Thanks<span class="HOEnZb"><font color="#888888"><br>
                -- <br>
                ______________________________<wbr>_________________<br>
                yocto mailing list<br>
                <a href="mailto:yocto@yoctoproject.org" target="_blank"
                  moz-do-not-send="true">yocto@yoctoproject.org</a><br>
                <a href="https://lists.yoctoproject.org/listinfo/yocto"
                  rel="noreferrer" target="_blank"
                  moz-do-not-send="true">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------F025EF03D493D21D1A7FACAD--
