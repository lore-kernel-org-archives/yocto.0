Return-Path: <woailinux@hotmail.com>
Received: from blu0-omc3-s4.blu0.hotmail.com (blu0-omc3-s4.blu0.hotmail.com
	[65.55.116.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E049DE01374
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 21:07:13 -0700 (PDT)
Received: from BLU0-SMTP206 ([65.55.116.72]) by blu0-omc3-s4.blu0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 19 Apr 2012 21:07:12 -0700
X-Originating-IP: [114.255.122.12]
X-Originating-Email: [woailinux@hotmail.com]
Message-ID: <BLU0-SMTP2063D04B3B264F52BA8C7E3B9220@phx.gbl>
Received: from [172.21.23.12] ([114.255.122.12]) by BLU0-SMTP206.phx.gbl over
	TLS secured channel with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 19 Apr 2012 21:07:11 -0700
Date: Fri, 20 Apr 2012 12:07:06 +0800
From: jack <woailinux@hotmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <BLU0-SMTP1526D7AA79BEFBC15BC6BACB93D0@phx.gbl>
	<C6510F6D410BB64A8C15398EDC6B847C451D4513@ORSMSX102.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C451D4513@ORSMSX102.amr.corp.intel.com>
X-OriginalArrivalTime: 20 Apr 2012 04:07:12.0202 (UTC)
	FILETIME=[101A6AA0:01CD1EAB]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: configure: error: C compiler cannot create executables when creating and building a hello world project.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 20 Apr 2012 04:07:14 -0000
Content-Type: multipart/alternative;
	boundary="------------090501030902080606020001"

--------------090501030902080606020001
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2012?04?20? 02:28, Zhang, Jessica wrote:
>
> Hi Jack,
>
> I think you've hit a known issue that introduced by the latest 
> LinuxTools project of Eclipse plug-in.  Here's steps that you can have 
> your Eclipse IDE updated to solve the issue:
>
> 1.Under Help->About Eclipse SDK, click "Installation Details", there 
> what is the version of your "Autotools support for CDT(Incubation)" is 
> it 3.0.1.201202152032? And scroll to the bottom, if you see Yocto 
> Plugin for Eclipse and the version is older than 1.2.0.201203141639, 
> then select Yocto Plugin for Eclipse and select uninstall, since the 
> older version of plugin won't be able to handle the bug that 
> introduced by LinuxTools project.  Follow the steps to uninstall the 
> Yocto plug-in and restart your Eclipse
>
> 2.IF your "Autotools support for CDT" version is different from the 
> above mentioned. Under Help->Install New Software, Click on "Available 
> Software Sites" and make sure "Indigo" got checked. And In the" Work 
> With:" drop down, select Indigo, extend "Programming Languages" and 
> select "Autotools support for CDT" and follow the steps to update to 
> the latest version and restart Eclipse
>
> 3.Go to 
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/eclipse-plugin/indigo, 
> and download org.yocto.sdk-rc1-201203141638-archive.zip 
> <http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/eclipse-plugin/indigo/org.yocto.sdk-rc1-201203141638-archive.zip> 
> to your local system, and in Eclipse Help->Install New Software, "Work 
> With:" click ADD, there you can put name as Yocto-1.1.1, and click on 
> Archive and select the Yocto plug-in archive zip file you just 
> downloaded.  Then from the drop down select the Yocto-1.1.1 and follow 
> the steps to finish reinstall and restart Eclipse.
>
> Now your Eclipse IDE should behave as desired which allows you to 
> reconfigure a specific Yocto project using certain sysroot.
>
> Thanks,
>
> Jessica
>
> *From:*yocto-bounces@yoctoproject.org 
> [mailto:yocto-bounces@yoctoproject.org] *On Behalf Of *jack
> *Sent:* Thursday, April 19, 2012 2:15 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] configure: error: C compiler cannot create 
> executables when creating and building a hello world project.
>
> hello all!
> After creating a project in Eclipse, I tried to Configure the 
> Cross-Toolchains.
>
> But I did like this:"Select |Project -> Change Yocto Project 
> Settings|: This selection brings up the |Project Yocto Settings| 
> Dialog and allows you to make changes specific to an individual 
> project.", there was not |Project Yocto Settings| Dialog.
>
> Then I select |Project -> Reconfigure Project|,  the information on 
> the console:
>
> Invoking autogen.sh in build directory: 
> /home/jackie/workspace/helloclutter
>
> Command-line environment variables:
>      CFLAGS=" -g -O0  -m32   -march=i586 
> --sysroot=/home/jackie/sysroot" CXXFLAGS=" -g -O0  -m32   -march=i586 
> --sysroot=/home/jackie/sysroot" LDFLAGS="  
> --sysroot=/home/jackie/sysroot" CPPFLAGS=" -m32   -march=i586 
> --sysroot=/home/jackie/sysroot"
>
> sh /home/jackie/workspace/helloclutter/autogen.sh 
> --with-libtool-sysroot=/home/jackie/sysroot --target=i586-poky-linux 
> --host=i586-poky-linux --build=i686-linux 
> --with-libtool-sysroot=/opt/poky/1.1.1/sysroots/i586-poky-linux
> configure.ac:21: installing `./compile'
> configure.ac:20: installing `./config.guess'
> configure.ac:20: installing `./config.sub'
> configure.ac:16: installing `./install-sh'
> configure.ac:16: installing `./missing'
> src/Makefile.am: installing `./depcomp'
> configure: loading site script /opt/poky/1.1.1/site-config-i586-poky-linux
> checking for a BSD-compatible install... /usr/bin/install -c
> checking whether build environment is sane... yes
> checking for i586-poky-linux-strip... i586-poky-linux-strip
> checking for a thread-safe mkdir -p... /bin/mkdir -p
> checking for gawk... gawk
> checking whether make sets $(MAKE)... yes
> checking build system type... i686-pc-linux-gnu
> checking host system type... i586-poky-linux-gnu
> checking how to print strings... printf
> checking for style of include used by make... GNU
> checking for i586-poky-linux-gcc... i586-poky-linux-gcc
> checking whether the C compiler works... no
> configure: error: in `/home/jackie/workspace/helloclutter':
> configure: error: in `/home/jackie/workspace/helloclutter':
> configure: error: C compiler cannot create executables
> configure: error: C compiler cannot create executables
> See `config.log' for more details
>
> Configuration failed with error
>
> Who can help me? Thank you!
>
Hello,Jessica!
Thank you for your help! I have solved my problem and found the error 
was caused by the wrong path of "sysroot location". But your advice 
still is useful for me, because several days ago,I was puzzled by the 
older version of yocto plugin for eclipse, and you provide a nice 
solution for me.

ThX!
jack

--------------090501030902080606020001
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 2012&#24180;04&#26376;20&#26085; 02:28, Zhang, Jessica wrote:
    <blockquote
cite="mid:C6510F6D410BB64A8C15398EDC6B847C451D4513@ORSMSX102.amr.corp.intel.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <meta name="Generator" content="Microsoft Word 12 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1201355329;
	mso-list-type:hybrid;
	mso-list-template-ids:-1795893672 67698703 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi
            Jack,<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">I
            think you&#8217;ve hit a known issue that introduced by the latest
            LinuxTools project of Eclipse plug-in.&nbsp; Here&#8217;s steps that
            you can have your Eclipse IDE updated to solve the issue:<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span
              style="mso-list:Ignore">1.<span style="font:7.0pt
                &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Under
            Help-&gt;About Eclipse SDK, click &#8220;Installation Details&#8221;,
            there what is the version of your &#8220;Autotools support for
            CDT(Incubation)&#8221; is it 3.0.1.201202152032? And scroll to the
            bottom, if you see Yocto Plugin for Eclipse and the version
            is older than 1.2.0.201203141639, then select Yocto Plugin
            for Eclipse and select uninstall, since the older version of
            plugin won&#8217;t be able to handle the bug that introduced by
            LinuxTools project.&nbsp; Follow the steps to uninstall the Yocto
            plug-in and restart your Eclipse<o:p></o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span
              style="mso-list:Ignore">2.<span style="font:7.0pt
                &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">IF
            your &#8220;Autotools support for CDT&#8221; version is different from
            the above mentioned. Under Help-&gt;Install New Software,
            Click on &#8220;Available Software Sites&#8221; and make sure &#8220;Indigo&#8221;
            got checked. And In the&#8221; Work With:&#8221; drop down, select
            Indigo, extend &#8220;Programming Languages&#8221; and select &#8220;Autotools
            support for CDT&#8221; and follow the steps to update to the
            latest version and restart Eclipse<o:p></o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span
              style="mso-list:Ignore">3.<span style="font:7.0pt
                &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Go
            to
            <a moz-do-not-send="true"
href="http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/eclipse-plugin/indigo">http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/eclipse-plugin/indigo</a>,
            and download
          </span><a moz-do-not-send="true"
href="http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/eclipse-plugin/indigo/org.yocto.sdk-rc1-201203141638-archive.zip">org.yocto.sdk-rc1-201203141638-archive.zip</a>
          to your local system, and in Eclipse Help-&gt;Install New
          Software, &#8220;Work With:&#8221; click ADD, there you can put name as
          Yocto-1.1.1, and click on Archive and select the Yocto plug-in
          archive zip file you just downloaded.&nbsp; Then from the drop down
          select the Yocto-1.1.1 and follow the steps to finish
          reinstall and restart Eclipse.<span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p></o:p></span></p>
        <p class="MsoListParagraph"><o:p>&nbsp;</o:p></p>
        <p class="MsoListParagraph">Now your Eclipse IDE should behave
          as desired which allows you to reconfigure a specific Yocto
          project using certain sysroot.<o:p></o:p></p>
        <p class="MsoListParagraph"><o:p>&nbsp;</o:p></p>
        <p class="MsoListParagraph">Thanks,<o:p></o:p></p>
        <p class="MsoListParagraph">Jessica<span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #B5C4DF
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">
                <a class="moz-txt-link-abbreviated" href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>
                [<a class="moz-txt-link-freetext" href="mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yoctoproject.org</a>]
                <b>On Behalf Of </b>jack<br>
                <b>Sent:</b> Thursday, April 19, 2012 2:15 AM<br>
                <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                <b>Subject:</b> [yocto] configure: error: C compiler
                cannot create executables when creating and building a
                hello world project.<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">hello all!<br>
          After creating a project in Eclipse, I tried to Configure the
          Cross-Toolchains. <br>
          <br>
          But I did like this:"Select <code><span
              style="font-size:10.0pt">Project -&gt; Change Yocto
              Project Settings</span></code>: This selection brings up
          the
          <code><span style="font-size:10.0pt">Project Yocto Settings</span></code>
          Dialog and allows you to make changes specific to an
          individual project.", there was not
          <code><span style="font-size:10.0pt">Project Yocto Settings</span></code>
          Dialog.
          <br>
          <br>
          Then I select <code><span style="font-size:10.0pt">Project
              -&gt; Reconfigure Project</span></code>,&nbsp; the information
          on the console:<br>
          <br>
          Invoking autogen.sh in build directory:
          /home/jackie/workspace/helloclutter<br>
          <br>
          Command-line environment variables:<br>
          &nbsp;&nbsp;&nbsp; &nbsp;CFLAGS=" -g -O0&nbsp; -m32&nbsp;&nbsp; -march=i586
          --sysroot=/home/jackie/sysroot" CXXFLAGS=" -g -O0&nbsp; -m32&nbsp;&nbsp;
          -march=i586 --sysroot=/home/jackie/sysroot" LDFLAGS="&nbsp;
          --sysroot=/home/jackie/sysroot" CPPFLAGS=" -m32&nbsp;&nbsp; -march=i586
          --sysroot=/home/jackie/sysroot"<br>
          <br>
          sh /home/jackie/workspace/helloclutter/autogen.sh
          --with-libtool-sysroot=/home/jackie/sysroot
          --target=i586-poky-linux --host=i586-poky-linux
          --build=i686-linux
          --with-libtool-sysroot=/opt/poky/1.1.1/sysroots/i586-poky-linux
          <br>
          configure.ac:21: installing `./compile'<br>
          configure.ac:20: installing `./config.guess'<br>
          configure.ac:20: installing `./config.sub'<br>
          configure.ac:16: installing `./install-sh'<br>
          configure.ac:16: installing `./missing'<br>
          src/Makefile.am: installing `./depcomp'<br>
          configure: loading site script
          /opt/poky/1.1.1/site-config-i586-poky-linux<br>
          checking for a BSD-compatible install... /usr/bin/install -c<br>
          checking whether build environment is sane... yes<br>
          checking for i586-poky-linux-strip... i586-poky-linux-strip<br>
          checking for a thread-safe mkdir -p... /bin/mkdir -p<br>
          checking for gawk... gawk<br>
          checking whether make sets $(MAKE)... yes<br>
          checking build system type... i686-pc-linux-gnu<br>
          checking host system type... i586-poky-linux-gnu<br>
          checking how to print strings... printf<br>
          checking for style of include used by make... GNU<br>
          checking for i586-poky-linux-gcc... i586-poky-linux-gcc<br>
          checking whether the C compiler works... no<br>
          configure: error: in `/home/jackie/workspace/helloclutter':<br>
          configure: error: in `/home/jackie/workspace/helloclutter':<br>
          configure: error: C compiler cannot create executables<br>
          configure: error: C compiler cannot create executables<br>
          See `config.log' for more details<br>
          <br>
          Configuration failed with error<br>
          <br>
          Who can help me? Thank you!<o:p></o:p></p>
      </div>
    </blockquote>
    Hello,Jessica! <br>
    Thank you for your help! I have solved my problem and found the
    error was caused by the wrong path of "sysroot location". But your
    advice still is useful for me, because several days ago,I was
    puzzled by the older version of yocto plugin for eclipse, and you
    provide a nice solution for me. <br>
    <br>
    ThX!<br>
    jack<br>
  </body>
</html>

--------------090501030902080606020001--
