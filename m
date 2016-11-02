Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8B2DE007A2; Tue,  1 Nov 2016 23:32:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AAA4E0070F
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 23:32:51 -0700 (PDT)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.13.8/8.13.8) with ESMTP id uA26WmNr013782
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 2 Nov 2016 08:32:48 +0200
To: yocto@yoctoproject.org
References: <1199472296.497716.1477658207727.ref@mail.yahoo.com>
	<1199472296.497716.1477658207727@mail.yahoo.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <07543f7a-7365-17b4-c4d0-c741e60fdfd1@vitheia.com>
Date: Wed, 2 Nov 2016 08:32:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <1199472296.497716.1477658207727@mail.yahoo.com>
Subject: Re: Tcl SIGCHLD lost process error
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
X-List-Received-Date: Wed, 02 Nov 2016 06:32:54 -0000
Content-Type: multipart/alternative;
	boundary="------------7FC510FB3987E546894BE4EB"

--------------7FC510FB3987E546894BE4EB
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Does anyone has this issue also ?
Any input ?

Thanks

On 28/10/16 15:36, Valentina Skorpion wrote:
>        Hello everyone,
>
>      I have been using yocto jethro in order to build my custom Linux 
> distribution for several devices ( qemuarm , sama5d4, etc) . I have 
> used the linux-yocto 4.1.5 kernel version and latest version packages. 
> After upgrading to yocto krogoth I have used a newer version of linux 
> kernel ( version 4.7.2 ) and newer version packages. I had some tcl 
> scripts which worked fine before but now  the following error has been 
> triggered:
>     error waiting for process to exit : child process lost is sigchld 
> ignored or trapped? )
>
>      This error is being triggered when tcl *exec *function is 
> executed. Even simpler commands such as "exec ls" triggers the same 
> error (the command is not executed).
>
>      I have tried to reproduce the error on yocto krogoth with older 
> versions of linux kernel. On linux-yocto 4.4 the same error appeared.  
> On linux-yocto 4.1.5 with some outdated packages (with older version, 
> only Tcl had the same version in all test cases) the exec function 
> runned fine (as I have mentioned before). To reproduce the error in 
> this case, SIGCHLD had to be trapped outside tclsh (with trap command 
> : trap "" CHLD), but even then, the command inside exec was executed 
> and only after that the mentioned error was triggered (similar to this 
> issue: 
> http://www.rkeene.org/projects/tcl/tcl.fossil/info/2982713fffffffff ).
>
>      It seemed at a package (on which depends Tcl) traps or ignores 
> the SIGCHLD.  After some research, a similar issue has been reported ( 
> https://sourceware.org/bugzilla/show_bug.cgi?id=19861 ). In a newer 
> glibc version, fork functionality could not use IFUNC resolver so it 
> would trigger in tcl the SIGCHLD error. A patch has been applied to 
> glib pt-fork.c ( 
> https://sourceware.org/git/gitweb.cgi?p=glibc.git;a=blobdiff;f=nptl/pt-fork.c;h=db9b61d9aa172c7886b6ed3decb355a3aa4c9036;hp=b65d6b4eddc0c17a39825a9cd30d0dc3fb5b141f;hb=f06f3f05b48c72e2c9b0fa78671f94fd22d67da8;hpb=7838d298d895f65247fb6b498db03a4336fc0506 
> ) in order to fix the issue and now works fine.
>
>
>      Has somebody encountered this issue too? Has anyone used this 
> patch to fix the problem or used another fix? Thanks!
>
>
>
>
>
>


--------------7FC510FB3987E546894BE4EB
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Does anyone has this issue also ?<br>
    Any input ?<br>
    <br>
    Thanks<br>
    <br>
    <div class="moz-cite-prefix">On 28/10/16 15:36, Valentina Skorpion
      wrote:<br>
    </div>
    <blockquote
      cite="mid:1199472296.497716.1477658207727@mail.yahoo.com"
      type="cite">
      <div style="color:#000; background-color:#fff;
        font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial,
        Lucida Grande, sans-serif;font-size:16px">
        <div id="yui_3_16_0_ym19_1_1477658121094_4342" dir="ltr">       
                 Hello everyone,<br
            id="yui_3_16_0_ym19_1_1477658121094_4453">
          <br id="yui_3_16_0_ym19_1_1477658121094_4454">
               I have been using yocto jethro in order to build my
          custom Linux distribution for several devices ( qemuarm ,
          sama5d4, etc) . I have used the linux-yocto 4.1.5 kernel
          version and latest version packages. After upgrading to yocto
          krogoth I have used a newer version of linux kernel ( version
          4.7.2 ) and newer version packages. I had some tcl scripts
          which worked fine before but now  the following error has been
          triggered: <br id="yui_3_16_0_ym19_1_1477658121094_4455">
              error waiting for process to exit : child process lost is
          sigchld ignored or trapped? )<br
            id="yui_3_16_0_ym19_1_1477658121094_4456">
          <br id="yui_3_16_0_ym19_1_1477658121094_4457">
               This error is being triggered when tcl <b
            id="yui_3_16_0_ym19_1_1477658121094_4458"><big
              id="yui_3_16_0_ym19_1_1477658121094_4459">exec </big></b><big
            id="yui_3_16_0_ym19_1_1477658121094_4460"><small
              id="yui_3_16_0_ym19_1_1477658121094_4461">funct</small></big>ion
          is executed. Even simpler commands such as "exec ls" triggers
          the same error (the command is not executed).<br
            id="yui_3_16_0_ym19_1_1477658121094_4462">
          <br id="yui_3_16_0_ym19_1_1477658121094_4463">
               I have tried to reproduce the error on yocto krogoth with
          older versions of linux kernel. On linux-yocto 4.4 the same
          error appeared.  On linux-yocto 4.1.5 with some outdated
          packages (with older version, only Tcl had the same version in
          all test cases) the exec function runned fine (as I have
          mentioned before). To reproduce the error in this case,
          SIGCHLD had to be trapped outside tclsh (with trap command :
          trap "" CHLD), but even then, the command inside exec was
          executed and only after that the mentioned error was triggered
          (similar to this issue:
          <a class="moz-txt-link-freetext" href="http://www.rkeene.org/projects/tcl/tcl.fossil/info/2982713fffffffff">http://www.rkeene.org/projects/tcl/tcl.fossil/info/2982713fffffffff</a>
          ). <br id="yui_3_16_0_ym19_1_1477658121094_4464">
          <br id="yui_3_16_0_ym19_1_1477658121094_4465">
               It seemed at a package (on which depends Tcl) traps or
          ignores the SIGCHLD.  After some research, a similar issue has
          been reported (
          <a class="moz-txt-link-freetext" href="https://sourceware.org/bugzilla/show_bug.cgi?id=19861">https://sourceware.org/bugzilla/show_bug.cgi?id=19861</a> ). In a
          newer glibc version, fork functionality could not use IFUNC
          resolver so it would trigger in tcl the SIGCHLD error. A patch
          has been applied to glib pt-fork.c (
<a class="moz-txt-link-freetext" href="https://sourceware.org/git/gitweb.cgi?p=glibc.git;a=blobdiff;f=nptl/pt-fork.c;h=db9b61d9aa172c7886b6ed3decb355a3aa4c9036;hp=b65d6b4eddc0c17a39825a9cd30d0dc3fb5b141f;hb=f06f3f05b48c72e2c9b0fa78671f94fd22d67da8;hpb=7838d298d895f65247fb6b498db03a4336fc0506">https://sourceware.org/git/gitweb.cgi?p=glibc.git;a=blobdiff;f=nptl/pt-fork.c;h=db9b61d9aa172c7886b6ed3decb355a3aa4c9036;hp=b65d6b4eddc0c17a39825a9cd30d0dc3fb5b141f;hb=f06f3f05b48c72e2c9b0fa78671f94fd22d67da8;hpb=7838d298d895f65247fb6b498db03a4336fc0506</a>
          ) in order to fix the issue and now works fine.<br
            id="yui_3_16_0_ym19_1_1477658121094_4466">
          <br id="yui_3_16_0_ym19_1_1477658121094_4467">
          <br id="yui_3_16_0_ym19_1_1477658121094_4468">
               Has somebody encountered this issue too? Has anyone used
          this patch to fix the problem or used another fix? Thanks!<br
            id="yui_3_16_0_ym19_1_1477658121094_4469">
          <span style="color: rgb(51, 51, 51); font-family: Arial,
            sans-serif; font-size: 14px; line-height: 20px;"
            id="yui_3_16_0_ym19_1_1477658121094_4470"></span><br
            id="yui_3_16_0_ym19_1_1477658121094_4471">
                    <br id="yui_3_16_0_ym19_1_1477658121094_4472">
          <br id="yui_3_16_0_ym19_1_1477658121094_4473">
              <br id="yui_3_16_0_ym19_1_1477658121094_4474">
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------7FC510FB3987E546894BE4EB--
