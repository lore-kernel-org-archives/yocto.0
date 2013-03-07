Return-Path: <hans.beckerus@gmail.com>
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 4BC18E014BB
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 13:22:53 -0800 (PST)
Received: by mail-lb0-f180.google.com with SMTP id q12so806960lbc.25
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 13:22:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type;
	bh=0XcyrsekmAV0TKHOAltQTx2B45EA6Cxz5L00Wk4Fh4c=;
	b=gtmV/MaiuEa4q8+2bi3xzLymq8qh7nzr4D4pwTpRegFeW+3HVzAghb/61X9L7ABngN
	YW9U2r7tjxWc18jR8i2/Aigj+x/gIW2P/Rtijq3iM28sxPS6Jx2ox4Hmw4GFq0/UAcVC
	zIePv0V8TMCubrjJ/vcJtVYab1DMHAccJv2+gZFYcTQs8EOvFpkn98ALnFS1M7drdAmW
	RK+xXMdjIq1n9EyAWUAGpbWI+bpxCBE3er5lbR2EZSgFnQScJsJLJ973zOvJ/3Z8BY6X
	v6gs6eietwuE8+VJYADHFG9HlMm2qLgZvSP6/TPZ2Hx2u94jN0iypPO0aIWO4H+fsBLI
	oTIg==
X-Received: by 10.112.9.104 with SMTP id y8mr84571lba.132.1362691370950;
	Thu, 07 Mar 2013 13:22:50 -0800 (PST)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPS id m2sm990269lbz.7.2013.03.07.13.22.49
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 07 Mar 2013 13:22:50 -0800 (PST)
Message-ID: <51390529.30700@gmail.com>
Date: Thu, 07 Mar 2013 22:22:49 +0100
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:17.0) Gecko/20130215 Thunderbird/17.0.3
MIME-Version: 1.0
To: Jerrod Peach <peachj@lexmark.com>
References: <CAFyqS9q2BimC1TeDGj5r5WZQCcG1z+MA1tdbrB5X8yLqxCheTA@mail.gmail.com>
	<CAFyqS9r=myEwXm6tv4cTFVSPUi4fG3eAvmZ0oqKMBDFmV4wBZw@mail.gmail.com>
	<CA+QkY1Bbstb5N=8fC-LSfS6c1xVaW39+rkLHcJtHT-Fonba+vQ@mail.gmail.com>
	<5138EDDC.70403@gmail.com>
	<CA+QkY1CkQmPZQmpVCcCOsA9cCvnS4YjdqWywdtAikbnO8KU6eA@mail.gmail.com>
In-Reply-To: <CA+QkY1CkQmPZQmpVCcCOsA9cCvnS4YjdqWywdtAikbnO8KU6eA@mail.gmail.com>
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
X-List-Received-Date: Thu, 07 Mar 2013 21:22:53 -0000
Content-Type: multipart/alternative;
	boundary="------------080802060203090706080205"

--------------080802060203090706080205
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-03-07 10:01, Jerrod Peach wrote:
>
>
>
> On Thu, Mar 7, 2013 at 2:43 PM, Hans Beckerus <hans.beckerus@gmail.com 
> <mailto:hans.beckerus@gmail.com>> wrote:
>
>     On 2013-03-07 8:11, Jerrod Peach wrote:
>>     Hans,
>>
>>     Are you sure you're seeing the patch system use $WORKDIR instead
>>     of $S as the root for patching?  I've had to do a lot of patching
>>     in our own layers recently and I've always seen $S used as the
>>     root for the patch.  Are you explicitly setting S =
>>     "${WORKDIR}/git"?  That's what we do for our git recipes.  That's
>>     how you get the system to recognize the source somewhere other
>>     than just $WORKDIR.
>>
>>     As for specifying a different -pnum, you absolutely can do that
>>     like so:
>>
>>     /SRC_URI += "file://my-change.patch*;striplevel=X*"/
>>
>>     X is the pnum that you want.  Its default value is 1.
>>
>>     You may also find this page useful -- it contains all sorts of
>>     hints for setting up your recipes in a Yocto-standard way:
>>
>>     https://wiki.yoctoproject.org/wiki/Recipe_&_Patch_Style_Guide
>>
>>     That's where I learned about striplevel and the preference for it
>>     over the deprecated pnum parameter.
>>
>>     Kind regards,
>>
>>     Jerrod
>>
>>
>     Hi Jarod. Thanks, the pointer you gave will most certainly be of
>     great aid. I will try the striplevel approach
>     instead of writing my own do_patch() override.
>     Regarding how certain I am that the root folder is ${WORKDIR} when
>     patching, not at all ;)
>     In my do_patch() function is simply did `pwd` and it was not set
>     to ${S} as I set it to.
>     That does not mean that the built-in patch system is using
>     ${WORKDIR}, I am aware of that.
>     Things here is, even though my patch is placed in ${W} and I set
>     ${S} to eg. ${W}/git/some/folder,
>     why would it not work? In another package I set ${S} to
>     ${WORKDIR}/git and it works
>     just fine. I can not understand why setting ${S} to something else
>     breaks the logic?
>     It's not that bitbake can not find the patch file, it definitely
>     does that, but the -pnum seems to get
>     messed up. But maybe that is the whole point of having the
>     striplevel=X in the first place.
>
>     Hans
>
>
> pnum/striplevel's purpose is to strip off the leading paths from a 
> patch file.  If you're having trouble understanding how that works, 
> this link might help:
>
> http://drupal.org/patch/apply#comment-239397
>
> Changing $S to a different depth and having do_patch() fail is 
> certainly expected behavior if you don't change the value of 
> striplevel.  Does that answer your question?

Yes, I am fully aware of how -pnum works. My confusion was based on how 
bitbake will assume a certain depth and use that as default.
Actually it could have been more clever by doing a comparison between $W 
(or patch file location), the patch itself, and $S.
Anyway, you did answer my question. Thanks. I will try the striplevel 
tomorrow when I am back at work.

Hans

--------------080802060203090706080205
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 2013-03-07 10:01, Jerrod Peach
      wrote:<br>
    </div>
    <blockquote
cite="mid:CA+QkY1CkQmPZQmpVCcCOsA9cCvnS4YjdqWywdtAikbnO8KU6eA@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <div class="gmail_extra"><br>
          <br>
          <div class="gmail_quote">On Thu, Mar 7, 2013 at 2:43 PM, Hans
            Beckerus <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:hans.beckerus@gmail.com" target="_blank">hans.beckerus@gmail.com</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
              <div text="#000000" bgcolor="#FFFFFF">
                <div class="im">
                  <div>On 2013-03-07 8:11, Jerrod Peach wrote:<br>
                  </div>
                  <blockquote type="cite">
                    <div dir="ltr">Hans,
                      <div><br>
                      </div>
                      <div>Are you sure you're seeing the patch system
                        use $WORKDIR instead of $S as the root for
                        patching? &nbsp;I've had to do a lot of patching in
                        our own layers recently and I've always seen $S
                        used as the root for the patch. &nbsp;Are you
                        explicitly setting S = "${WORKDIR}/git"? &nbsp;That's
                        what we do for our git recipes. &nbsp;That's how you
                        get the system to recognize the source somewhere
                        other than just $WORKDIR.</div>
                      <div><br>
                      </div>
                      <div>As for specifying a different -pnum, you
                        absolutely can do that like so:</div>
                      <div><br>
                      </div>
                      <div><i>SRC_URI += "<a moz-do-not-send="true">file://my-change.patch</a><b>;striplevel=X</b>"</i></div>
                      <div> <br>
                      </div>
                      <div>X is the pnum that you want. &nbsp;Its default
                        value is 1.</div>
                      <div><br>
                      </div>
                      <div>You may also find this page useful -- it
                        contains all sorts of hints for setting up your
                        recipes in a Yocto-standard way:</div>
                      <div><br>
                      </div>
                      <div><a moz-do-not-send="true"
                          href="https://wiki.yoctoproject.org/wiki/Recipe_&amp;_Patch_Style_Guide"
                          target="_blank">https://wiki.yoctoproject.org/wiki/Recipe_&amp;_Patch_Style_Guide</a><br>
                      </div>
                      <div><br>
                      </div>
                      <div>That's where I learned about striplevel and
                        the preference for it over the deprecated pnum
                        parameter.</div>
                      <div><br>
                      </div>
                      <div>Kind regards,</div>
                      <div><br>
                      </div>
                      <div>Jerrod</div>
                      <div><br>
                      </div>
                      <div><br>
                      </div>
                    </div>
                  </blockquote>
                </div>
                Hi Jarod. Thanks, the pointer you gave will most
                certainly be of great aid. I will try the striplevel
                approach<br>
                instead of writing my own do_patch() override.<br>
                Regarding how certain I am that the root folder is
                ${WORKDIR} when patching, not at all ;)<br>
                In my do_patch() function is simply did `pwd` and it was
                not set to ${S} as I set it to.<br>
                That does not mean that the built-in patch system is
                using ${WORKDIR}, I am aware of that.<br>
                Things here is, even though my patch is placed in ${W}
                and I set ${S} to eg. ${W}/git/some/folder,<br>
                why would it not work? In another package I set ${S} to
                ${WORKDIR}/git and it works<br>
                just fine. I can not understand why setting ${S} to
                something else breaks the logic?<br>
                It's not that bitbake can not find the patch file, it
                definitely does that, but the -pnum seems to get<br>
                messed up. But maybe that is the whole point of having
                the striplevel=X in the first place.<span class=""><font
                    color="#888888"><br>
                    <br>
                    Hans</font></span>
                <div>
                  <div class="h5"><br>
                  </div>
                </div>
              </div>
            </blockquote>
            <div><br>
            </div>
            <div>pnum/striplevel's purpose is to strip off the leading
              paths from a patch file. &nbsp;If you're having trouble
              understanding how that works, this link might help:
              <div>
                <br>
              </div>
              <div><a moz-do-not-send="true"
                  href="http://drupal.org/patch/apply#comment-239397">http://drupal.org/patch/apply#comment-239397</a><br>
              </div>
              <div><br>
              </div>
              <div>Changing $S to a different depth and having
                do_patch() fail is certainly expected behavior if you
                don't change the value of striplevel. &nbsp;Does that answer
                your question?</div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Yes, I am fully aware of how -pnum works. My confusion was based on
    how bitbake will assume a certain depth and use that as default.<br>
    Actually it could have been more clever by doing a comparison
    between $W (or patch file location), the patch itself, and $S.<br>
    Anyway, you did answer my question. Thanks. I will try the
    striplevel tomorrow when I am back at work.<br>
    <br>
    Hans<br>
  </body>
</html>

--------------080802060203090706080205--
