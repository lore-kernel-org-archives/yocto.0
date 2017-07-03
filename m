Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43472E00B65; Mon,  3 Jul 2017 00:04:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from cloudserver096301.home.net.pl (cloudserver096301.home.net.pl
	[79.96.179.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E711E00B49
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 00:04:08 -0700 (PDT)
Received: from 81-95-197-197.metrolink.pl (81.95.197.197) (HELO
	[192.168.0.103])
	by serwer1539010.home.pl (79.96.179.35) with SMTP (IdeaSmtpServer 0.82)
	id d9c71dbf8b274795; Mon, 3 Jul 2017 09:04:05 +0200
To: S.Jaritz@esa-grimma.de, Prasoon Kumar <prasoonkumar1295@gmail.com>
References: <CAGAEfx5_j17h=PGTKC4WT_qi+gUEqQU9E_w_7vzRE_0OPasuow@mail.gmail.com>
	<CAGAEfx4B_sEGMb-ie+Ti9JZzQ_COf8VF+9FdptsKNwvzLqscxQ@mail.gmail.com>
	<CAGAEfx7gZt_JSdmTwWi7H5C8_9Lu8y3MvHaFdW163VRveqdfZw@mail.gmail.com>
	<CAGAEfx5M6tzcfFxhHy-gY52Bm-eu6=ExTc-h=b1D_epTD45Ozw@mail.gmail.com>
	<CAGAEfx4=OdQr5cKcYS=pDBbmAYuFO+7FOCs8yOZrPfw2npbKaQ@mail.gmail.com>
	<OF1B082038.0592BE40-ONC1258152.0024744C-C1258152.00257B15@esa-grimma.de>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <92bb5925-b20a-5e96-e3db-1648c1160adc@3mdeb.com>
Date: Mon, 3 Jul 2017 09:04:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <OF1B082038.0592BE40-ONC1258152.0024744C-C1258152.00257B15@esa-grimma.de>
Cc: yocto@yoctoproject.org
Subject: Re: Antwort: How to make changes and build u-boot source code in yocto
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
X-List-Received-Date: Mon, 03 Jul 2017 07:04:12 -0000
Content-Type: multipart/alternative;
	boundary="------------DBC4C836EE9A6555BA943DD9"
Content-Language: en-US

--------------DBC4C836EE9A6555BA943DD9
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



On 07/03/2017 08:49 AM, S.Jaritz@esa-grimma.de wrote:
> Hej ho
>
> my Workflow for adjusting uboot (u-boot-at91):
>
> 1.) build the original uboot
> 2.) apply changes
> 3.) create patch
> 3.1.) if you reconfigure it -> save/copy the config
> 3.2.) if you adding code -> use meld or something similar to create a 
> patch
> 4.) create u-boot-at91_%.bbappend
> 4.1) copy patch/config into that recipe dir
> 4.2) check u-boot-at91_%.bbappend paths etc.
> 5.) rebuild
>
> I you mess to much around in /tmp/work*** you should use "-c 
> clean"/"-c cleanall" to reset it
>
> regards
>
> Stefan
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 181
> Telefax: +49 3437 9211 26
> E-Mail: s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de
>
>
> Geschäftsführer:
> Dipl.-Ing. Jörg Gaitzsch
> Jörg Reinker
>
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
>
>
> Diese E-Mail enthält vertrauliche und/oder rechtlich geschützte 
> Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrtümlich 
> erhalten
> haben, informieren Sie bitte sofort den Absender und löschen Sie diese
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe 
> dieser Mail
> ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If 
> you are
> not the intended recipient (or have received this e-mail in error) please
> notify the sender immediately and destroy this e-mail. Any unauthorized
> copying, disclosure or distribution of the material in this e-mail is 
> strictly
> forbidden.
>
>
>
> Von: Prasoon Kumar <prasoonkumar1295@gmail.com>
> An: yocto@yoctoproject.org
> Datum: 03.07.2017 08:34
> Betreff: [yocto] How to make changes and build u-boot source code in 
> yocto
> Gesendet von: yocto-bounces@yoctoproject.org
> ------------------------------------------------------------------------
>
>
>
> Hi,
Hi Prasoon,
>
>
> I am trying to make some changes in u-boot code and using bitbake 
> u-boot to build. But it doesn't build.
> I also tried bitbake u-boot -c compile and bitbake u-boot deploy. This 
> also didn't work.
>
> Can I Get some help on how to change and build u-boot.

You may also take a look at devtool [1] when you are in phase of trying 
something out. Creating patch
and bbappend file is indeed proper and final solution, but in 
development phase can take up much
more of your time. In fact, you could use devtool to create patches and 
append file as well.

In short, devtool uses local source code to build from instead of 
fetching from mirror every time.
To use it:

1. Following command will extract and patch git repo in specified path:

   devtool modify -x u-boot ~/projects/poky/build/u-boot-devtool

2. Make some changes in source code.

3. Rebuild given recipe:

   devtool build u-boot

4. You can add some commits inside `u-boot-devtool` directory and update recipe with:

   devtool update-recipe u-boot

   It will create patch from each commit and automatically add them to appropriate
   directory and recipe file. For example:

   NOTE: Adding new patch 0001-test.patch
   NOTE: Updating recipe u-boot_2016.03.bb

5. When work with temporary source directory is done, run:

   devtool reset u-boot


Se attached link for more information

[1] 
http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#using-devtool-in-your-workflow 

>
>
> Thanks,
> Prasoon--
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

-- 
Maciej Pijanowski
Embedded Systems Engineer
http://3mdeb.com | @3mdeb_com


--------------DBC4C836EE9A6555BA943DD9
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 07/03/2017 08:49 AM,
      <a class="moz-txt-link-abbreviated" href="mailto:S.Jaritz@esa-grimma.de">S.Jaritz@esa-grimma.de</a> wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:OF1B082038.0592BE40-ONC1258152.0024744C-C1258152.00257B15@esa-grimma.de"><font
        size="2" face="sans-serif">Hej ho</font>
      <br>
      <br>
      <font size="2" face="sans-serif">my Workflow for adjusting uboot
        (u-boot-at91):</font>
      <br>
      <br>
      <font size="2" face="sans-serif">1.) build the original uboot</font>
      <br>
      <font size="2" face="sans-serif">2.) apply changes</font>
      <br>
      <font size="2" face="sans-serif">3.) create patch</font>
      <br>
      <font size="2" face="sans-serif">3.1.) if you reconfigure it -&gt;
        save/copy
        the config</font>
      <br>
      <font size="2" face="sans-serif">3.2.) if you adding code -&gt;
        use meld
        or something similar to create a patch</font>
      <br>
      <font size="2" face="sans-serif">4.) create u-boot-at91_%.bbappend</font>
      <br>
      <font size="2" face="sans-serif">4.1) copy patch/config into that
        recipe
        dir</font>
      <br>
      <font size="2" face="sans-serif">4.2) check u-boot-at91_%.bbappend
        paths
        etc.</font>
      <br>
      <font size="2" face="sans-serif">5.) rebuild </font>
      <br>
      <br>
      <font size="2" face="sans-serif">I you mess to much around in
        /tmp/work***
        you should use "-c clean"/"-c cleanall" to reset it</font>
      <br>
      <br>
      <font size="2" face="sans-serif">regards<br>
        <br>
        Stefan<br>
        ------------------------------------------------------------<br>
        ESA Elektroschaltanlagen Grimma GmbH<br>
        Broner Ring 30<br>
        04668 Grimma<br>
        Telefon: +49 3437 9211 181<br>
        Telefax: +49 3437 9211 26<br>
        E-Mail: <a class="moz-txt-link-abbreviated" href="mailto:s.jaritz@esa-grimma.de">s.jaritz@esa-grimma.de</a><br>
        Internet: </font><a href="www.esa-grimma.de"
        moz-do-not-send="true"><font size="2" face="sans-serif">www.esa-grimma.de</font></a><font
        size="2" face="sans-serif"><br>
        <br>
        <br>
        Geschäftsführer:<br>
        Dipl.-Ing. Jörg Gaitzsch<br>
        Jörg Reinker<br>
        <br>
        Sitz der Gesellschaft: Grimma<br>
        Ust.-ID: DE 141784437<br>
        Amtsgericht: Leipzig, HRB 5159<br>
        Steuernummer: 238/108/00755<br>
        <br>
        <br>
        Diese E-Mail enthält vertrauliche und/oder rechtlich geschützte
        Informationen.
        <br>
        Wenn Sie nicht der richtige Adressat sind oder diese E-Mail
        irrtümlich
        erhalten <br>
        haben, informieren Sie bitte sofort den Absender und löschen Sie
        diese
        <br>
        Nachricht. Das unerlaubte Kopieren sowie die unbefugte
        Weitergabe dieser
        Mail <br>
        ist nicht gestattet.<br>
        <br>
        This e-mail may contain confidential and/or privileged
        information. If
        you are <br>
        not the intended recipient (or have received this e-mail in
        error) please
        <br>
        notify the sender immediately and destroy this e-mail. Any
        unauthorized
        <br>
        copying, disclosure or distribution of the material in this
        e-mail is strictly
        <br>
        forbidden.</font>
      <br>
      <br>
      <br>
      <br>
      <font size="1" color="#5f5f5f" face="sans-serif">Von:      
         </font><font size="1" face="sans-serif">Prasoon Kumar
        <a class="moz-txt-link-rfc2396E" href="mailto:prasoonkumar1295@gmail.com">&lt;prasoonkumar1295@gmail.com&gt;</a></font>
      <br>
      <font size="1" color="#5f5f5f" face="sans-serif">An:      
         </font><font size="1" face="sans-serif"><a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a></font>
      <br>
      <font size="1" color="#5f5f5f" face="sans-serif">Datum:      
         </font><font size="1" face="sans-serif">03.07.2017 08:34</font>
      <br>
      <font size="1" color="#5f5f5f" face="sans-serif">Betreff:    
           </font><font size="1" face="sans-serif">[yocto] How
        to make changes and build u-boot source code in yocto</font>
      <br>
      <font size="1" color="#5f5f5f" face="sans-serif">Gesendet von:    
           </font><font size="1" face="sans-serif"><a class="moz-txt-link-abbreviated" href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a></font>
      <br>
      <hr noshade="noshade">
      <br>
      <br>
      <br>
      <font size="3">Hi,</font></blockquote>
    Hi Prasoon,
    <blockquote type="cite"
cite="mid:OF1B082038.0592BE40-ONC1258152.0024744C-C1258152.00257B15@esa-grimma.de"><br>
      <br>
      <font size="3">I am trying to make some changes in u-boot code and
        using
        bitbake u-boot to build. But it doesn't build.</font>
      <br>
      <font size="3">I also tried bitbake u-boot -c compile and bitbake
        u-boot
        deploy. This also didn't work.</font>
      <br>
      <br>
      <font size="3">Can I Get some help on how to change and build
        u-boot. <br>
      </font></blockquote>
    <br>
    You may also take a look at devtool [1] when you are in phase of
    trying something out. Creating patch<br>
    and bbappend file is indeed proper and final solution, but in
    development phase can take up much<br>
    more of your time. In fact, you could use devtool to create patches
    and append file as well.<br>
    <br>
    In short, devtool uses local source code to build from instead of
    fetching from mirror every time.<br>
    To use it:<br>
    <br>
    <pre>1. Following command will extract and patch git repo in specified path:

  devtool modify -x u-boot ~/projects/poky/build/u-boot-devtool

2. Make some changes in source code.

3. Rebuild given recipe:

  devtool build u-boot

4. You can add some commits inside `u-boot-devtool` directory and update recipe with:

  devtool update-recipe u-boot

  It will create patch from each commit and automatically add them to appropriate
  directory and recipe file. For example:

  NOTE: Adding new patch 0001-test.patch
  NOTE: Updating recipe u-boot_2016.03.bb

5. When work with temporary source directory is done, run:

  devtool reset u-boot
</pre>
    <br>
    Se attached link for more information<br>
    <br>
    [1]
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#using-devtool-in-your-workflow">http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#using-devtool-in-your-workflow</a>
    <blockquote type="cite"
cite="mid:OF1B082038.0592BE40-ONC1258152.0024744C-C1258152.00257B15@esa-grimma.de"><br>
      <br>
      <font size="3">Thanks,</font>
      <br>
      <font size="3">Prasoon</font><tt><font size="2">-- <br>
          _______________________________________________<br>
          yocto mailing list<br>
          <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
        </font></tt><a
        href="https://lists.yoctoproject.org/listinfo/yocto"
        moz-do-not-send="true"><tt><font size="2">https://lists.yoctoproject.org/listinfo/yocto</font></tt></a><tt><font
          size="2"><br>
        </font></tt>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
<a class="moz-txt-link-freetext" href="http://3mdeb.com">http://3mdeb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------DBC4C836EE9A6555BA943DD9--
