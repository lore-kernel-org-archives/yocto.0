Return-Path: <bartosz.woronicz@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA2A3E00BD0; Thu, 11 Feb 2016 04:38:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [93.183.12.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from demumfd002.nsn-inter.net (demumfd002.nsn-inter.net
	[93.183.12.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57A62E00BB9
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 04:38:25 -0800 (PST)
Received: from demuprx016.emea.nsn-intra.net ([10.150.129.55])
	by demumfd002.nsn-inter.net (8.15.2/8.15.2) with ESMTPS id
	u1BCcMhX025314
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Thu, 11 Feb 2016 12:38:22 GMT
Received: from [10.154.187.104] ([10.154.187.104])
	by demuprx016.emea.nsn-intra.net (8.12.11.20060308/8.12.11) with ESMTP
	id u1BCcMjR006501; Thu, 11 Feb 2016 13:38:22 +0100
To: "EXT Burton, Ross" <ross.burton@intel.com>
References: <56BC6621.6000809@nokia.com>
	<CAJTo0Lan0mShTsA7ybk0OZH3qFmtvWpOv113Wv6V=m7BannUeg@mail.gmail.com>
From: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Message-ID: <56BC80BE.5030707@nokia.com>
Date: Thu, 11 Feb 2016 13:38:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0Lan0mShTsA7ybk0OZH3qFmtvWpOv113Wv6V=m7BannUeg@mail.gmail.com>
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for
	further information)
X-purgate-size: 6882
X-purgate-ID: 151667::1455194303-00004E94-724C2FD6/0/0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: valgrind-native
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
X-List-Received-Date: Thu, 11 Feb 2016 12:38:29 -0000
Content-Type: multipart/alternative;
	boundary="------------070601060002030501010303"

--------------070601060002030501010303
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Ross,

many thanks for nice explanation. At my shallow research, I notice, that 
valgrind is somewhat special demanding packages with debugging symbols, 
sooo... I actually don't need all packages to be unstripped. Only those 
I am developing and testing. Therefore i might need create some class 
that will require debug symbols.
And, propalby I will also need glibc with DBG symbols... or not ?


"Presumably you added BBCLASSEXTEND=native yourself, so you get to fix 
it. :)"
Indeed, I did so ;-]

Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
NSN - PL/Wroclaw

On 11.02.2016 11:57, EXT Burton, Ross wrote:
> Hi,
>
> On 11 February 2016 at 10:44, Woronicz, Bartosz ( NSN - PL/Wroclaw) 
> <bartosz.woronicz@nokia.com <mailto:bartosz.woronicz@nokia.com>> wrote:
>
>     Any ideas why I cannot build native valgrind ?
>     http://pastebin.com/e2h6AWxN
>     "Missing or unbuildable dependency chain was: ['valgrind-native',
>     'glibc-dbg-native']"
>
>     Also tried bitbake glibc-dbg . nothing provides that, but it is
>     required in recipe
>
>
> The short answer is because valgrind doesn't have a native form yet.  
> Presumably you added BBCLASSEXTEND=native yourself, so you get to fix 
> it. :)
>
> valgrind RRECOMMENDS $(TCLIBC)-dbg as without debugging symbols it's 
> fairly useless, and TCLIBC is the variable for the libc being used (in 
> your case, glibc). As a recommends, it will be built.
>
> However, native recipes don't usually depend on the C library 
> (base.bbclass handles the addition of those core dependencies, and 
> doesn't run on native builds) so you've hit a new corner case.
>
> The easy fix would be to remove the recommends in the native build case:
>
> RRECOMMENDS_${PN}_class-native = ""
>
> Surprisingly enough it then builds!
>
> Also remember that we strip the native sysroot, so if you want a 
> native valgrind to be useful in any way you'll have to disable that 
> too (INHIBIT_SYSROOT_STRIP).
>
> (it would probably be easier to use the host valgrind, to be honest)
>
> Ross


--------------070601060002030501010303
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi Ross,<br>
    <br>
    many thanks for nice explanation. At my shallow research, I notice,
    that valgrind is somewhat special demanding packages with debugging
    symbols, sooo... I actually don't need all packages to be
    unstripped. Only those I am developing and testing. Therefore i
    might need create some class that will require debug symbols. <br>
    And, propalby I will also need glibc with DBG symbols... or not ?<br>
    <br>
    <br>
    "Presumably you added BBCLASSEXTEND=native yourself, so you get to
    fix it. :)"<br>
    Indeed, I did so ;-]<br>
    <br>
    <pre class="moz-signature" cols="72">Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
NSN - PL/Wroclaw</pre>
    <div class="moz-cite-prefix">On 11.02.2016 11:57, EXT Burton, Ross
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAJTo0Lan0mShTsA7ybk0OZH3qFmtvWpOv113Wv6V=m7BannUeg@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <div dir="ltr">
        <div class="gmail_extra">Hi,</div>
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 11 February 2016 at 10:44,
            Woronicz, Bartosz ( NSN - PL/Wroclaw) <span dir="ltr">&lt;<a
                moz-do-not-send="true"
                href="mailto:bartosz.woronicz@nokia.com" target="_blank"><a class="moz-txt-link-abbreviated" href="mailto:bartosz.woronicz@nokia.com">bartosz.woronicz@nokia.com</a></a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div id=":n3" class="a3s" style="overflow:hidden">Any
                ideas why I cannot build native valgrind ? <a
                  moz-do-not-send="true"
                  href="http://pastebin.com/e2h6AWxN" rel="noreferrer"
                  target="_blank"><a class="moz-txt-link-freetext" href="http://pastebin.com/e2h6AWxN">http://pastebin.com/e2h6AWxN</a></a><br>
                "Missing or unbuildable dependency chain was:
                ['valgrind-native', 'glibc-dbg-native']"<br>
                <br>
                Also tried bitbake glibc-dbg . nothing provides that,
                but it is required in recipe</div>
            </blockquote>
          </div>
          <br>
          The short answer is because valgrind doesn't have a native
          form yet.  Presumably you added BBCLASSEXTEND=native yourself,
          so you get to fix it. :)</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">valgrind RRECOMMENDS $(TCLIBC)-dbg as
          without debugging symbols it's fairly useless, and TCLIBC is
          the variable for the libc being used (in your case, glibc). 
          As a recommends, it will be built.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">However, native recipes don't usually
          depend on the C library (base.bbclass handles the addition of
          those core dependencies, and doesn't run on native builds) so
          you've hit a new corner case.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">The easy fix would be to remove the
          recommends in the native build case:</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">RRECOMMENDS_${PN}_class-native = ""</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Surprisingly enough it then builds!</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Also remember that we strip the native
          sysroot, so if you want a native valgrind to be useful in any
          way you'll have to disable that too (INHIBIT_SYSROOT_STRIP).</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">(it would probably be easier to use the
          host valgrind, to be honest)</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------070601060002030501010303--
