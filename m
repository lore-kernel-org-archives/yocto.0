Return-Path: <bartosz.woronicz@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40379E00DA3; Tue,  9 Feb 2016 05:51:22 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5CFFE00C9F
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 05:51:18 -0800 (PST)
Received: from demuprx017.emea.nsn-intra.net ([10.150.129.56])
	by demumfd002.nsn-inter.net (8.15.2/8.15.2) with ESMTPS id
	u19DpAew022387
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Tue, 9 Feb 2016 13:51:10 GMT
Received: from [10.154.187.104] ([10.154.187.104])
	by demuprx017.emea.nsn-intra.net (8.12.11.20060308/8.12.11) with ESMTP
	id u19Dp3t7009406; Tue, 9 Feb 2016 14:51:04 +0100
To: "EXT Burton, Ross" <ross.burton@intel.com>
References: <56B1D2D1.5010508@nokia.com> <1454497513.3990.6.camel@open-rnd.pl>
	<56B33100.9020903@nokia.com> <56B89638.9060905@nokia.com>
	<1454939078.3938.18.camel@open-rnd.pl> <56B9A55A.9040607@nokia.com>
	<CAJTo0LYj05btWH+pnLkp-gwd+S1qefys+_ZhdEMBGShqm08nrQ@mail.gmail.com>
From: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Message-ID: <56B9EEC7.8010303@nokia.com>
Date: Tue, 9 Feb 2016 14:51:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYj05btWH+pnLkp-gwd+S1qefys+_ZhdEMBGShqm08nrQ@mail.gmail.com>
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for
	further information)
X-purgate-size: 6712
X-purgate-ID: 151667::1455025870-00004E94-27C1B138/0/0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Where should I append Yocto bitbake task to create work folder symlink ?
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
X-List-Received-Date: Tue, 09 Feb 2016 13:51:22 -0000
Content-Type: multipart/alternative;
	boundary="------------020005030204070402020500"

--------------020005030204070402020500
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Cheers, mate!

That solves my issue (but with small fix).
/do_unpack[postfuncs] += "do_latest_link"
/instead/
//do_unpack[postfuncs] += "latest_link"

Because, without "do_" it says
WARNING: Function latest_link doesn't exist

/Here is the whole bbclass/:
/

    DESCRIPTION = "Creates symlink to the latest version workdir of the
    package"

    do_latest_link() {
         if [ -n "${WORKDIR}" ]; then
             linkname="$(dirname ${WORKDIR})/latest"
             rm -f $linkname
             ln -s $(basename ${WORKDIR}) $linkname
         fi
    }
    addtask latest_link after do_unpack

    do_unpack[postfuncs] += "do_latest_link"


But for better understanding I made the more throughout look into the 
documentations. I found the information about "postfuncs" you talk about 
[1]. However, the tasks description [2] doesn't say anything about 
including the task in the process, it just describes the demanded order 
that the task is put ( addtask something after|before othertask ).

That is so, until I read "3.6. Variable Flags"  [3]. Where is quite 
clearly stated those variables control functionality and *dependencies*.
The documentation is quite unclear in that case.

[1] 
http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#executing-tasks
[2] 
http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#tasks
[3] 
http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#variable-flags 


Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
NSN - PL/Wroclaw

On 09.02.2016 10:10, EXT Burton, Ross wrote:
>
> On 9 February 2016 at 08:37, Woronicz, Bartosz ( NSN - PL/Wroclaw) 
> <bartosz.woronicz@nokia.com <mailto:bartosz.woronicz@nokia.com>> wrote:
>
>     Ok, but I don't want to run it everytime, just after the
>     do_unpack. What I need to put it in requirements for each recipe ?
>     Maybe something like
>
>     do_unpack[require] = "latest_link"
>
>
> do_unpack[postfuncs] += "latest_link" will run latest_link after 
> unpack has executed.
>
> Ross


--------------020005030204070402020500
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Cheers, mate!<br>
    <br>
    That solves my issue (but with small fix). <br>
    <i>do_unpack[postfuncs] += "do_latest_link"<br>
    </i>instead<i><br>
    </i><i>do_unpack[postfuncs] += "latest_link"<br>
      <br>
      Because, without "do_" it says<br>
      WARNING: Function latest_link doesn't exist<br>
      <br>
    </i>Here is the whole bbclass<i>:<br>
    </i>
    <blockquote>DESCRIPTION = "Creates symlink to the latest version
      workdir of the package"<br>
      <br>
      do_latest_link() {<br>
          if [ -n "${WORKDIR}" ]; then<br>
              linkname="$(dirname ${WORKDIR})/latest"<br>
              rm -f $linkname<br>
              ln -s $(basename ${WORKDIR}) $linkname<br>
          fi<br>
      }<br>
      addtask latest_link after do_unpack<br>
      <br>
      do_unpack[postfuncs] += "do_latest_link"<br>
    </blockquote>
    <br>
    But for better understanding I made the more throughout look into
    the documentations. I found the information about "postfuncs" you
    talk about [1]. However, the tasks description [2] doesn't say
    anything about including the task in the process, it just describes
    the demanded order that the task is put ( addtask something
    after|before othertask ).<br>
    <br>
    That is so, until I read "3.6. Variable Flags"  [3]. Where is quite
    clearly stated those variables control functionality and
    *dependencies*. <br>
    The documentation is quite unclear in that case.<br>
    <br>
    [1]
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#executing-tasks">http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#executing-tasks</a><br>
    [2]
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#tasks">http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#tasks</a><br>
    [3]
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#variable-flags">http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#variable-flags</a>
    <pre class="moz-signature" cols="72">Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
NSN - PL/Wroclaw</pre>
    <div class="moz-cite-prefix">On 09.02.2016 10:10, EXT Burton, Ross
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAJTo0LYj05btWH+pnLkp-gwd+S1qefys+_ZhdEMBGShqm08nrQ@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 9 February 2016 at 08:37,
            Woronicz, Bartosz ( NSN - PL/Wroclaw) <span dir="ltr">&lt;<a
                moz-do-not-send="true"
                href="mailto:bartosz.woronicz@nokia.com" target="_blank"><a class="moz-txt-link-abbreviated" href="mailto:bartosz.woronicz@nokia.com">bartosz.woronicz@nokia.com</a></a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div id=":283" class="a3s" style="overflow:hidden">Ok, but
                I don't want to run it everytime, just after the
                do_unpack. What I need to put it in requirements for
                each recipe ?<br>
                Maybe something like<br>
                <br>
                do_unpack[require] = "latest_link"<br>
              </div>
            </blockquote>
          </div>
          <br>
          do_unpack[postfuncs] += "latest_link" will run latest_link
          after unpack has executed.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------020005030204070402020500--
