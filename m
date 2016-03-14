Return-Path: <rich@noir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C52F9E00D63; Mon, 14 Mar 2016 16:38:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_BRBL_LASTEXT,RDNS_DYNAMIC autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.4 RCVD_IN_BRBL_LASTEXT RBL: RCVD_IN_BRBL_LASTEXT
	*      [198.144.209.5 listed in bb.barracudacentral.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from sendai.noir.com (m209-5.dsl.rawbw.com [198.144.209.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3D43E00C72
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 16:38:36 -0700 (PDT)
Received: from joso.noir.com (joso.noir.com [192.168.1.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by sendai.noir.com (Postfix) with ESMTPSA id 3CDF8E10E6;
	Mon, 14 Mar 2016 16:38:36 -0700 (PDT)
To: Rudolf Streif <rudolf.streif@gmail.com>
References: <56E64947.5020606@mlbassoc.com>
	<CAMKF1sr3DgBbiAHAb0GngGDZeN-LUhFWH0s7bQ+zm2iYD-EaDA@mail.gmail.com>
	<658fd98c-9dd9-a98e-a597-f86ef61582aa@noir.com>
	<CAEKp-abbXs5DNuW5KZD_wdFWCYwccBLksXjBJ1dUCAK6Lw6rWg@mail.gmail.com>
From: K Richard Pixley <rich@noir.com>
Message-ID: <8857db4a-e4b3-44d0-64c2-46e53a3c8b26@noir.com>
Date: Mon, 14 Mar 2016 16:38:35 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:47.0)
	Gecko/20100101 Thunderbird/47.0a2
MIME-Version: 1.0
In-Reply-To: <CAEKp-abbXs5DNuW5KZD_wdFWCYwccBLksXjBJ1dUCAK6Lw6rWg@mail.gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Problems building live image
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
X-List-Received-Date: Mon, 14 Mar 2016 23:38:37 -0000
Content-Type: multipart/alternative;
	boundary="------------D8B370B37D7F2B68EB1945D0"

--------------D8B370B37D7F2B68EB1945D0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/14/16 15:58 , Rudolf Streif wrote:
> Richard,
>
> On Mon, Mar 14, 2016 at 1:55 PM, K Richard Pixley <rich@noir.com 
> <mailto:rich@noir.com>> wrote:
>
>     If I add that line, (
>
>     IMAGE_FSTYPES = "vmdk"
>
>     ), to my local.conf, I get:
>
>         rich@burgess> time bitbake core-image-minimal
>         ERROR:  OE-core's config sanity checker detected a potential
>         misconfiguration.
>             Either fix the cause of this error or at your own risk
>         disable the checker (see sanity.conf).
>             Following is the list of potential problems / advisories:
>
>             Error, IMAGE_FSTYPES vmdk and live can't be built together
>
>
>         Summary: There was 1 ERROR message shown, returning a non-zero
>         exit code.
>
>     Building yocto-2.0 for genericx86-64.  What am I doing wrong?
>
> Nothing really. The issue is conflicting SYSLINUX_LABELS for the boot 
> options. For the live image the labels are boot and install while 
> there is only boot for the vmdk image. Prior to 2.0 Jethro you could 
> specify both, live and vmdk, in IMAGE_FSTYPES. It built both but the 
> live image was missing the install boot option (it had two boot 
> options instead). This function in syslinux.bbclass now flags the issue:
>
> # Some of the vars for vm and live image are conflicted, this function
> # is used for fixing the problem.
> def syslinux_set_vars(d, suffix):
>    vars = ['SYSLINUX_ROOT', 'SYSLINUX_CFG', 'LABELS', 'INITRD']
>    for var in vars:
>        var_with_suffix = var + '_'+ suffix
>        if d.getVar(var, True):
>            bb.warn('Found potential conflicted var %s, please use %s 
> rather than %s'% \
>                (var, var_with_suffix, var))
>        elif d.getVar(var_with_suffix, True):
>            d.setVar(var, d.getVar(var_with_suffix, True))
>
>
>  Technically, in my opinion, you should be able to build both at the 
> same time. You may want to disable the sanity checker.
Thank you.

What stops us from building different boot labels for different images?  
That seems like the obvious choice.  Or perhaps, using "boot" for all 
syslinux images and adding "install" for "live" images.

--rich

--------------D8B370B37D7F2B68EB1945D0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 3/14/16 15:58 , Rudolf Streif wrote:<br>
    </div>
    <blockquote
cite="mid:CAEKp-abbXs5DNuW5KZD_wdFWCYwccBLksXjBJ1dUCAK6Lw6rWg@mail.gmail.com"
      type="cite">
      <div dir="ltr">Richard,<br>
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On Mon, Mar 14, 2016 at 1:55 PM, K
            Richard Pixley <span dir="ltr">&lt;<a
                moz-do-not-send="true" href="mailto:rich@noir.com"
                target="_blank"><a class="moz-txt-link-abbreviated" href="mailto:rich@noir.com">rich@noir.com</a></a>&gt;</span> wrote:<br>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
              <div bgcolor="#FFFFFF" text="#000000"> If I add that line,
                (
                <pre>IMAGE_FSTYPES = "vmdk"</pre>
                ), to my local.conf, I get:<br>
                <blockquote>rich@burgess&gt; time bitbake
                  core-image-minimal<br>
                  ERROR:  OE-core's config sanity checker detected a
                  potential misconfiguration.<br>
                      Either fix the cause of this error or at your own
                  risk disable the checker (see sanity.conf).<br>
                      Following is the list of potential problems /
                  advisories:<br>
                  <br>
                      Error, IMAGE_FSTYPES vmdk and live can't be built
                  together<br>
                  <br>
                  <br>
                  Summary: There was 1 ERROR message shown, returning a
                  non-zero exit code.<br>
                </blockquote>
                Building yocto-2.0 for genericx86-64.  What am I doing
                wrong?<br>
                <br>
              </div>
            </blockquote>
            <div>Nothing really. The issue is conflicting
              SYSLINUX_LABELS for the boot options. For the live image
              the labels are boot and install while there is only boot
              for the vmdk image. Prior to 2.0 Jethro you could specify
              both, live and vmdk, in IMAGE_FSTYPES. It built both but
              the live image was missing the install boot option (it had
              two boot options instead). This function in
              syslinux.bbclass now flags the issue:</div>
            <div><br>
            </div>
            <div><span style="color:rgb(24,24,178)"># Some of the vars
                for vm and live image are conflicted, this function</span><span
                style="color:rgb(0,0,0)">
              </span><br>
              <span style="color:rgb(24,24,178)"># is used for fixing
                the problem.</span><span style="color:rgb(0,0,0)">
              </span><br>
              def syslinux_set_vars(d, suffix):
              <br>
                 vars = [<span style="color:rgb(178,24,24)">'SYSLINUX_ROOT'</span><span
                style="color:rgb(0,0,0)">, </span><span
                style="color:rgb(178,24,24)">'SYSLINUX_CFG'</span><span
                style="color:rgb(0,0,0)">, </span><span
                style="color:rgb(178,24,24)">'</span><span
                style="color:rgb(178,24,24);background-color:rgb(255,255,84)">LABELS</span><span
                style="color:rgb(178,24,24)">'</span><span
                style="color:rgb(0,0,0)">, </span><span
                style="color:rgb(178,24,24)">'INITRD'</span><span
                style="color:rgb(0,0,0)">]
              </span><br>
                 for var in vars:
              <br>
                     var_with_suffix = var + <span
                style="color:rgb(178,24,24)">'_'</span><span
                style="color:rgb(0,0,0)"> + suffix
              </span><br>
                     if d.getVar(var, True):
              <br>
                         bb.warn(<span style="color:rgb(178,24,24)">'Found
                potential conflicted var %s, please use %s rather than
                %s'</span><span style="color:rgb(0,0,0)"> % \
              </span><br>
                             (var, var_with_suffix, var))
              <br>
                     elif d.getVar(var_with_suffix, True):
              <br>
                         d.setVar(var, d.getVar(var_with_suffix, True))
              <br>
              <br>
              <br>
            </div>
            <div> Technically, in my opinion, you should be able to
              build both at the same time. You may want to disable the
              sanity checker.</div>
          </div>
        </div>
      </div>
    </blockquote>
    Thank you.<br>
    <br>
    What stops us from building different boot labels for different
    images?  That seems like the obvious choice.  Or perhaps, using
    "boot" for all syslinux images and adding "install" for "live"
    images.<br>
    <br>
    --rich<br>
  </body>
</html>

--------------D8B370B37D7F2B68EB1945D0--
