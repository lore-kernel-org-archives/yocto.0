Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A7EFE0070C
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 02:02:18 -0700 (PDT)
Received: from [192.168.0.57] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id F048E2AEF5
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 08:19:58 +0000 (GMT)
Message-ID: <4F699923.5040901@communistcode.co.uk>
Date: Wed, 21 Mar 2012 09:02:27 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120314 Thunderbird/11.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <OFEA4B568B.582F38D7-ON652579C8.001AA88F-652579C8.001B875F@notesmail.huawei.com.cn>
	<F3906846C0EDD246B5CF75E8EDA3C47E138A620D@szxeml532-mbx.china.huawei.com>
In-Reply-To: <F3906846C0EDD246B5CF75E8EDA3C47E138A620D@szxeml532-mbx.china.huawei.com>
Subject: Re: Build failure because of do_fectch in Yocto-1.1
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
X-List-Received-Date: Wed, 21 Mar 2012 09:02:18 -0000
Content-Type: multipart/alternative;
	boundary="------------050002000001010402080402"

--------------050002000001010402080402
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 21/03/12 05:01, Ashish Pandey wrote:
> Hi All ,
>
>   I am new to Yocto and I am trying to build linux image using 
> Yocto-1.1 . I am not able to build completely , It is giving following 
> error.
>
> NOTE: package core-image-minimal-1.0-r0: task do_populate_sysroot: 
> Started
> NOTE: package core-image-minimal-1.0-r0: task do_populate_sysroot: 
> Succeeded
> ERROR: 
> '/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb' 
> failed
>
>
> I think it is not able to fetch linux-yocto_3.0 from 
> git://git.yoctoproject.org/linux-yocto-3.0.
>
> I do not have internet setup in my build machine, I have downloaded 
> all the packages from a different machine and i have copied it to the 
> build machine.
>
> Following are the Build Machine ,Yocto setup and Error details:
>
> *1) Build machine:*
> Yocto@linux-todd:/home/yocto/poky-edison-6.0> uname -a
> Linux linux-todd 3.1.0-1.2-desktop #1 SMP PREEMPT Thu Nov 3 14:45:45 
> UTC 2011 (187dde0) i686 i686 i386 GNU/Linux
>
> It is Open Suse 12.1.
>
> *2) Yocto Setup :*
> Yocto@linux-todd:/home/yocto/poky-edison-6.0/build> bitbake -k 
> core-image-minimal
> Loading cache: 100% 
> |#######################################################################################################################################| 
> ETA:  00:00:00
> Loaded 1036 entries from dependency cache.
>
> OE Build Configuration:
> BB_VERSION        = "1.13.3"
> TARGET_ARCH       = "i586"
> TARGET_OS         = "linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.1"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-yocto        = "<unknown>:<unknown>"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
>
> *3) Error :*
>
> NOTE: package 
> linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+72671808fdbe69a9fe03fd8f094e7c59da04a28c-r2: 
> task do_fetch: Failed
> ERROR: Task 495 
> (/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb, 
> do_fetch) failed with exit code '1'
> ERROR: 
> '/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb' 
> failed
>
> Is there anyway to build yocto on a machine which does not have 
> internet and git ?
> Please help me to fix this issue.
>
> Regards,
>
> Ashish
>
> Huawei Technology
>
> This e-mail and its attachments contain confidential information from 
> HUAWEI, which is intended only for the person or entity whose address 
> is listed above. Any use of the information contained herein in any 
> way (including, but not limited to, total or partial disclosure, 
> reproduction, or dissemination) by persons other than the intended 
> recipient(s) is prohibited. If you receive this e-mail in error, 
> please notify the sender by phone or email immediately and delete it!
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

HI Ashish,

There is a short paragraph on the wiki[1] which gives a brief 
explanation on how to go about creating your own mirror of the 
downloaded files.

[1] https://wiki.yoctoproject.org/wiki/How_do_I

Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


--------------050002000001010402080402
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    On 21/03/12 05:01, Ashish Pandey wrote:
    <blockquote
cite="mid:F3906846C0EDD246B5CF75E8EDA3C47E138A620D@szxeml532-mbx.china.huawei.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <style id="owaParaStyle">P {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px
}
</style>
      <div style="direction: ltr;font-family: Tahoma;color:
        #000000;font-size: 10pt;">
        <div><font size="2" face="sans-serif">Hi All , </font><br>
          <br>
          <font size="2" face="sans-serif">&nbsp; I am new to Yocto and I am
            trying to build linux image using Yocto-1.1 . I am not able
            to build completely , It is giving following error.</font>
          <br>
          <br>
          <font size="2" face="sans-serif">NOTE: package
            core-image-minimal-1.0-r0: task do_populate_sysroot: Started</font>
          <br>
          <font size="2" face="sans-serif">NOTE: package
            core-image-minimal-1.0-r0: task do_populate_sysroot:
            Succeeded</font>
          <br>
          <font size="2" face="sans-serif">ERROR:
            '/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb'
            failed</font>
          <br>
          <br>
          <br>
          <font size="2" face="sans-serif">I think it is not able to
            fetch linux-yocto_3.0 from
            git://git.yoctoproject.org/linux-yocto-3.0.</font>
          <br>
          <br>
          <font size="2" face="sans-serif">I do not have internet setup
            in my build machine, I have downloaded all the packages from
            a different machine and i have copied it to the build
            machine.</font>
          <br>
          <br>
          <font size="2" face="sans-serif">Following are the Build
            Machine ,Yocto setup and Error details:</font></div>
        <div>&nbsp;<br>
          <font size="2" face="sans-serif"><b>1) Build machine:</b></font>
          <br>
          <font size="2" color="blue" face="sans-serif"><a class="moz-txt-link-abbreviated" href="mailto:Yocto@linux-todd:/home/yocto/poky-edison-6.0">Yocto@linux-todd:/home/yocto/poky-edison-6.0</a>&gt;
            uname -a</font>
          <br>
          <font size="2" color="blue" face="sans-serif">Linux linux-todd
            3.1.0-1.2-desktop #1 SMP PREEMPT Thu Nov 3 14:45:45 UTC 2011
            (187dde0) i686 i686 i386 GNU/Linux</font>
          <br>
          <br>
          <font size="2" color="blue" face="sans-serif">It is Open Suse
            12.1.</font> <br>
          <br>
          <font size="2" face="sans-serif"><b>2) Yocto Setup :</b></font>
          <br>
          <font size="2" color="blue" face="sans-serif"><a class="moz-txt-link-abbreviated" href="mailto:Yocto@linux-todd:/home/yocto/poky-edison-6.0/build">Yocto@linux-todd:/home/yocto/poky-edison-6.0/build</a>&gt;
            bitbake -k core-image-minimal</font>
          <br>
          <font size="2" color="blue" face="sans-serif">Loading cache:
            100%
            |#######################################################################################################################################|
            ETA: &nbsp;00:00:00</font>
          <br>
          <font size="2" color="blue" face="sans-serif">Loaded 1036
            entries from dependency cache.</font>
          <br>
          <br>
          <font size="2" color="blue" face="sans-serif">OE Build
            Configuration:</font> <br>
          <font size="2" color="blue" face="sans-serif">BB_VERSION &nbsp; &nbsp; &nbsp;
            &nbsp;= "1.13.3"</font>
          <br>
          <font size="2" color="blue" face="sans-serif">TARGET_ARCH &nbsp; &nbsp;
            &nbsp; = "i586"</font> <br>
          <font size="2" color="blue" face="sans-serif">TARGET_OS &nbsp; &nbsp; &nbsp;
            &nbsp; = "linux"</font> <br>
          <font size="2" color="blue" face="sans-serif">MACHINE &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; = "qemux86"</font>
          <br>
          <font size="2" color="blue" face="sans-serif">DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;= "poky"</font> <br>
          <font size="2" color="blue" face="sans-serif">DISTRO_VERSION &nbsp;
            &nbsp;= "1.1"</font> <br>
          <font size="2" color="blue" face="sans-serif">TUNE_FEATURES &nbsp;
            &nbsp; = "m32 i586"</font>
          <br>
          <font size="2" color="blue" face="sans-serif">TARGET_FPU &nbsp; &nbsp; &nbsp;
            &nbsp;= ""</font> <br>
          <font size="2" color="blue" face="sans-serif">meta</font> <br>
          <font size="2" color="blue" face="sans-serif">meta-yocto &nbsp; &nbsp; &nbsp;
            &nbsp;= "&lt;unknown&gt;:&lt;unknown&gt;"</font>
          <br>
          <br>
          <font size="2" color="blue" face="sans-serif">NOTE: Resolving
            any missing task queue dependencies</font>
          <br>
          <font size="2" color="blue" face="sans-serif">NOTE: Preparing
            runqueue</font> <br>
          <br>
          <font size="2" face="sans-serif"><b>3) Error :</b></font> <br>
          <br>
          <font size="2" color="blue" face="sans-serif">NOTE: package
            linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+72671808fdbe69a9fe03fd8f094e7c59da04a28c-r2:
            task do_fetch: Failed</font>
          <br>
          <font size="2" color="blue" face="sans-serif">ERROR: Task 495
            (/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb,
            do_fetch) failed with exit code '1'</font>
          <br>
          <font size="2" color="blue" face="sans-serif">ERROR:
            '/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb'
            failed</font>
          <br>
          <br>
          <font size="2" face="sans-serif">Is there anyway to build
            yocto on a machine which does not have internet and git ?</font>
          <br>
          <font size="2" face="sans-serif">Please help me to fix this
            issue.</font> <br>
          <br>
        </div>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <div>
          <p>&nbsp;</p>
          <div style="FONT-FAMILY: Tahoma; FONT-SIZE: 13px">
            <p><font color="#000080">Regards,</font></p>
            <p><font color="#000080">Ashish</font></p>
            <p><font color="#000080">Huawei Technology</font></p>
            <p>&nbsp;</p>
            <p><font color="#666699"><font size="2"><font face="Calibri">This
                    e-mail and its attachments contain confidential
                    information from HUAWEI, which is intended only for
                    the person or entity whose address is listed above.
                    Any use of the information contained herein in any
                    way (including, but not limited to, total or partial
                    disclosure, reproduction, or dissemination) by
                    persons other than the intended recipient(s) is
                    prohibited. If you receive this e-mail in error,
                    please notify the sender by phone or email
                    immediately and delete it! </font></font><br>
              </font></p>
          </div>
        </div>
        <div style="FONT-FAMILY: Times New Roman; COLOR: #000000;
          FONT-SIZE: 16px">
          <div style="DIRECTION: ltr" id="divRpF799243">&nbsp;</div>
          <div>&nbsp;</div>
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
    <tt><br>
      HI Ashish,<br>
      <br>
      There is a short paragraph on the wiki[1] which gives a brief
      explanation on how to go about creating your own mirror of the
      downloaded files.<br>
    </tt><tt><br>
      [1] <a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/How_do_I">https://wiki.yoctoproject.org/wiki/How_do_I</a><br>
      <br>
      Regards,</tt><br>
    <pre class="moz-signature" cols="72">-- 

  Jack Mitchell (<a class="moz-txt-link-abbreviated" href="mailto:jack@embed.me.uk">jack@embed.me.uk</a>)             
  Embedded Systems Engineer
  <a class="moz-txt-link-freetext" href="http://www.embed.me.uk">http://www.embed.me.uk</a>

--
</pre>
  </body>
</html>

--------------050002000001010402080402--
