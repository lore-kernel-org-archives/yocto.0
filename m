Return-Path: <hans.beckerus@gmail.com>
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 5D935E014CF
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 11:43:29 -0800 (PST)
Received: by mail-la0-f43.google.com with SMTP id ek20so923660lab.30
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 11:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type;
	bh=aFTPzayTB/Aa+4Fd3J5Y8/AVy1iX5/uj7K9aD9tMA/g=;
	b=JkgDUqCoJGB8bFX/emgzUr2AVFsBFPzRyPcr0xixztzkhxpmmxaM0QIdsN032IJf/H
	LSZw34FLK1nzw8wbLOxsgkwQgFDZqFZ7kqYpz4XLuSA4SbmFNLBj89UQp2g6MwLyWFhf
	CK+GLRodWDrwlnk4RHUBFlmNNU/q+b+tabHPeu2gtzg0vqiCc1HtcGJZ5KT7B+gvMEUN
	kCsb4RScM85a9ghm5k+pLEGgWwPbmJdjDaVx1e5mwLXN1/RmnkMQCxLNcSVGpNqwaeGI
	jQhsNgO7amWtmHBtSRmK25ovd4Fq2unjWw5GVLAGbw6EJLArnp8c1AI891jSQWl8psPz
	FaiQ==
X-Received: by 10.152.110.116 with SMTP id hz20mr29425401lab.18.1362685406862; 
	Thu, 07 Mar 2013 11:43:26 -0800 (PST)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPS id ev7sm911674lbb.15.2013.03.07.11.43.25
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 07 Mar 2013 11:43:25 -0800 (PST)
Message-ID: <5138EDDC.70403@gmail.com>
Date: Thu, 07 Mar 2013 20:43:24 +0100
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:17.0) Gecko/20130215 Thunderbird/17.0.3
MIME-Version: 1.0
To: Jerrod Peach <peachj@lexmark.com>
References: <CAFyqS9q2BimC1TeDGj5r5WZQCcG1z+MA1tdbrB5X8yLqxCheTA@mail.gmail.com>
	<CAFyqS9r=myEwXm6tv4cTFVSPUi4fG3eAvmZ0oqKMBDFmV4wBZw@mail.gmail.com>
	<CA+QkY1Bbstb5N=8fC-LSfS6c1xVaW39+rkLHcJtHT-Fonba+vQ@mail.gmail.com>
In-Reply-To: <CA+QkY1Bbstb5N=8fC-LSfS6c1xVaW39+rkLHcJtHT-Fonba+vQ@mail.gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Problem with applying a patch using default -pnum
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
X-List-Received-Date: Thu, 07 Mar 2013 19:43:30 -0000
Content-Type: multipart/alternative;
	boundary="------------050900050107000507060403"

--------------050900050107000507060403
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 2013-03-07 8:11, Jerrod Peach wrote:
> Hans,
>
> Are you sure you're seeing the patch system use $WORKDIR instead of $S 
> as the root for patching?  I've had to do a lot of patching in our own 
> layers recently and I've always seen $S used as the root for the 
> patch.  Are you explicitly setting S = "${WORKDIR}/git"?  That's what 
> we do for our git recipes.  That's how you get the system to recognize 
> the source somewhere other than just $WORKDIR.
>
> As for specifying a different -pnum, you absolutely can do that like so:
>
> /SRC_URI += "file://my-change.patch*;striplevel=X*"/
>
> X is the pnum that you want.  Its default value is 1.
>
> You may also find this page useful -- it contains all sorts of hints 
> for setting up your recipes in a Yocto-standard way:
>
> https://wiki.yoctoproject.org/wiki/Recipe_&_Patch_Style_Guide
>
> That's where I learned about striplevel and the preference for it over 
> the deprecated pnum parameter.
>
> Kind regards,
>
> Jerrod
>
>
Hi Jarod. Thanks, the pointer you gave will most certainly be of great 
aid. I will try the striplevel approach
instead of writing my own do_patch() override.
Regarding how certain I am that the root folder is ${WORKDIR} when 
patching, not at all ;)
In my do_patch() function is simply did `pwd` and it was not set to ${S} 
as I set it to.
That does not mean that the built-in patch system is using ${WORKDIR}, I 
am aware of that.
Things here is, even though my patch is placed in ${W} and I set ${S} to 
eg. ${W}/git/some/folder,
why would it not work? In another package I set ${S} to ${WORKDIR}/git 
and it works
just fine. I can not understand why setting ${S} to something else 
breaks the logic?
It's not that bitbake can not find the patch file, it definitely does 
that, but the -pnum seems to get
messed up. But maybe that is the whole point of having the striplevel=X 
in the first place.

Hans


>
>
>
>
> On Thu, Mar 7, 2013 at 7:33 AM, Hans Beckérus <hans.beckerus@gmail.com 
> <mailto:hans.beckerus@gmail.com>> wrote:
>
>     On Thu, Mar 7, 2013 at 1:12 PM, Hans Beckérus
>     <hans.beckerus@gmail.com <mailto:hans.beckerus@gmail.com>> wrote:
>     > Hi. More problems ;)
>     > I have a patch file that needs to be applied to a source tree
>     and the
>     > patch file is copied properly to the ${WORKDIR} directory.
>     > So far so good. But, the problem with this source tree is that it is
>     > not built from the traditional root folder of the repo.
>     > This means I need to change ${S} to point somewhere else. This also
>     > causes the patch system to fail!
>     > I did an override of do_patch() in my .bb and that seems to
>     work, but
>     > I do not like to use overrides unless I really have to.
>     > So basically, is there some way to tell the built-in patch system to
>     > use a different -pnum value?
>     > If there is, I could stick with the do_patch() as provided by
>     default.
>     >
>     > Hans
>
>     Hmm, ok a correction from my side. Forget parts of what I said ;)
>     The patch system does not seem to use the value of ${S}, it is using
>     ${WORKDIR} as the root for patching, this is also where the patch file
>     is placed. The problem in my case does not seem to be that is built
>     from a non-standard path. The reason why it fails seems to be because
>     the actual source is not in ${WORKDIR}, it is in ${WORKDIR}/git. The
>     patch file does include git as part of the source path for obvious
>     reasons. What am I doing wrong? Having actual source code in
>     ${WORKDIR}/git I assume is very common for git based downloads.
>
>     Hans
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>


--------------050900050107000507060403
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 2013-03-07 8:11, Jerrod Peach wrote:<br>
    </div>
    <blockquote
cite="mid:CA+QkY1Bbstb5N=8fC-LSfS6c1xVaW39+rkLHcJtHT-Fonba+vQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hans,
        <div><br>
        </div>
        <div>Are you sure you're seeing the patch system use $WORKDIR
          instead of $S as the root for patching? &nbsp;I've had to do a lot
          of patching in our own layers recently and I've always seen $S
          used as the root for the patch. &nbsp;Are you explicitly setting S
          = "${WORKDIR}/git"? &nbsp;That's what we do for our git recipes.
          &nbsp;That's how you get the system to recognize the source
          somewhere other than just $WORKDIR.</div>
        <div><br>
        </div>
        <div style="">As for specifying a different -pnum, you
          absolutely can do that like so:</div>
        <div style=""><br>
        </div>
        <div style=""><i>SRC_URI += "<a class="moz-txt-link-freetext" href="file://my-change.patch">file://my-change.patch</a><b>;striplevel=X</b>"</i></div>
        <div style="">
          <br>
        </div>
        <div style="">X is the pnum that you want. &nbsp;Its default value is
          1.</div>
        <div style=""><br>
        </div>
        <div style="">You may also find this page useful -- it contains
          all sorts of hints for setting up your recipes in a
          Yocto-standard way:</div>
        <div style=""><br>
        </div>
        <div style=""><a moz-do-not-send="true"
            href="https://wiki.yoctoproject.org/wiki/Recipe_&amp;_Patch_Style_Guide">https://wiki.yoctoproject.org/wiki/Recipe_&amp;_Patch_Style_Guide</a><br>
        </div>
        <div style=""><br>
        </div>
        <div style="">That's where I learned about striplevel and the
          preference for it over the deprecated pnum parameter.</div>
        <div style=""><br>
        </div>
        <div style="">Kind regards,</div>
        <div style=""><br>
        </div>
        <div style="">Jerrod</div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    Hi Jarod. Thanks, the pointer you gave will most certainly be of
    great aid. I will try the striplevel approach<br>
    instead of writing my own do_patch() override.<br>
    Regarding how certain I am that the root folder is ${WORKDIR} when
    patching, not at all ;)<br>
    In my do_patch() function is simply did `pwd` and it was not set to
    ${S} as I set it to.<br>
    That does not mean that the built-in patch system is using
    ${WORKDIR}, I am aware of that.<br>
    Things here is, even though my patch is placed in ${W} and I set
    ${S} to eg. ${W}/git/some/folder,<br>
    why would it not work? In another package I set ${S} to
    ${WORKDIR}/git and it works<br>
    just fine. I can not understand why setting ${S} to something else
    breaks the logic?<br>
    It's not that bitbake can not find the patch file, it definitely
    does that, but the -pnum seems to get<br>
    messed up. But maybe that is the whole point of having the
    striplevel=X in the first place.<br>
    <br>
    Hans<br>
    <br>
    <br>
    <blockquote
cite="mid:CA+QkY1Bbstb5N=8fC-LSfS6c1xVaW39+rkLHcJtHT-Fonba+vQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
      <div class="gmail_extra"><br>
        <br>
        <div class="gmail_quote">On Thu, Mar 7, 2013 at 7:33 AM, Hans
          Beck&eacute;rus <span dir="ltr">&lt;<a moz-do-not-send="true"
              href="mailto:hans.beckerus@gmail.com" target="_blank">hans.beckerus@gmail.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div class="im">On Thu, Mar 7, 2013 at 1:12 PM, Hans
              Beck&eacute;rus &lt;<a moz-do-not-send="true"
                href="mailto:hans.beckerus@gmail.com">hans.beckerus@gmail.com</a>&gt;
              wrote:<br>
              &gt; Hi. More problems ;)<br>
              &gt; I have a patch file that needs to be applied to a
              source tree and the<br>
              &gt; patch file is copied properly to the ${WORKDIR}
              directory.<br>
              &gt; So far so good. But, the problem with this source
              tree is that it is<br>
              &gt; not built from the traditional root folder of the
              repo.<br>
              &gt; This means I need to change ${S} to point somewhere
              else. This also<br>
              &gt; causes the patch system to fail!<br>
              &gt; I did an override of do_patch() in my .bb and that
              seems to work, but<br>
              &gt; I do not like to use overrides unless I really have
              to.<br>
              &gt; So basically, is there some way to tell the built-in
              patch system to<br>
              &gt; use a different -pnum value?<br>
              &gt; If there is, I could stick with the do_patch() as
              provided by default.<br>
              &gt;<br>
              &gt; Hans<br>
              <br>
            </div>
            Hmm, ok a correction from my side. Forget parts of what I
            said ;)<br>
            The patch system does not seem to use the value of ${S}, it
            is using<br>
            ${WORKDIR} as the root for patching, this is also where the
            patch file<br>
            is placed. The problem in my case does not seem to be that
            is built<br>
            from a non-standard path. The reason why it fails seems to
            be because<br>
            the actual source is not in ${WORKDIR}, it is in
            ${WORKDIR}/git. The<br>
            patch file does include git as part of the source path for
            obvious<br>
            reasons. What am I doing wrong? Having actual source code in<br>
            ${WORKDIR}/git I assume is very common for git based
            downloads.<br>
            <div class="HOEnZb">
              <div class="h5"><br>
                Hans<br>
                _______________________________________________<br>
                yocto mailing list<br>
                <a moz-do-not-send="true"
                  href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                <a moz-do-not-send="true"
                  href="https://lists.yoctoproject.org/listinfo/yocto"
                  target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
              </div>
            </div>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------050900050107000507060403--
