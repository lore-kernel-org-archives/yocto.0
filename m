Return-Path: <bartosz.woronicz@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB024E00C31; Wed,  3 Feb 2016 06:16:14 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77FC9E00C2E
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 06:16:11 -0800 (PST)
Received: from demuprx017.emea.nsn-intra.net ([10.150.129.56])
	by demumfd002.nsn-inter.net (8.15.2/8.15.2) with ESMTPS id
	u13EG5Gb006949
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Wed, 3 Feb 2016 14:16:06 GMT
Received: from [10.154.187.104] ([10.154.187.104])
	by demuprx017.emea.nsn-intra.net (8.12.11.20060308/8.12.11) with ESMTP
	id u13EG4E2001780; Wed, 3 Feb 2016 15:16:04 +0100
To: "EXT Burton, Ross" <ross.burton@intel.com>
References: <56B1D2D1.5010508@nokia.com>
	<CAJTo0LayhHP7wbcbLf7TOu8e=6-ERg90VdJu_Av9EfmBBFEmAg@mail.gmail.com>
From: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Message-ID: <56B20BA1.2060004@nokia.com>
Date: Wed, 3 Feb 2016 15:16:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LayhHP7wbcbLf7TOu8e=6-ERg90VdJu_Av9EfmBBFEmAg@mail.gmail.com>
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for
	further information)
X-purgate-size: 3982
X-purgate-ID: 151667::1454508966-0000462D-C7BA11D6/0/0
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
X-List-Received-Date: Wed, 03 Feb 2016 14:16:14 -0000
Content-Type: multipart/alternative;
	boundary="------------070902020608070401000607"

--------------070902020608070401000607
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 03.02.2016 11:28, EXT Burton, Ross wrote:
>
> On 3 February 2016 at 10:13, Woronicz, Bartosz ( NSN - PL/Wroclaw) 
> <bartosz.woronicz@nokia.com <mailto:bartosz.woronicz@nokia.com>> wrote:
>
>     Let's say I have my package at
>
>     host-64/tmp/work/x86_64-poky-linux/mypackage/1.2.3-r4/
>
>     I would like to have symlink created
>
>         host-64/tmp/work/x86_64-poky-linux/mypackage/latest -> 1.2.3-r4/
>
>     each time the new version is fetched and unpacked. How can I
>     achieve that ? Which class, task should I append, extend ?
>
>
> One way would be to create a new task that comes after unpack and 
> creates the symlink.
>
> You may be interested in the rm_old_work class that can remove old 
> work trees so there's only ever one work tree, and I believe due to 
> how master does sysroot cleanup there's only ever one version in work/ 
> now.
>
> Ross
But I need to the sysroot cleanup deliberately, right ?


----

Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
NSN - PL/Wroclaw



--------------070902020608070401000607
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <pre class="moz-signature" cols="72">
</pre>
    <div class="moz-cite-prefix">On 03.02.2016 11:28, EXT Burton, Ross
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAJTo0LayhHP7wbcbLf7TOu8e=6-ERg90VdJu_Av9EfmBBFEmAg@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 3 February 2016 at 10:13,
            Woronicz, Bartosz ( NSN - PL/Wroclaw)
            <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:bartosz.woronicz@nokia.com" target="_blank">bartosz.woronicz@nokia.com</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div id=":5qy" class="a3s" style="overflow:hidden">Let's
                say I have my package at<br>
                <br>
                   
                host-64/tmp/work/x86_64-poky-linux/mypackage/1.2.3-r4/<br>
                <br>
                I would like to have symlink created<br>
                <br>
                    host-64/tmp/work/x86_64-poky-linux/mypackage/latest
                -&gt; 1.2.3-r4/<br>
                <br>
                each time the new version is fetched and unpacked. How
                can I achieve that ? Which class, task should I append,
                extend ?</div>
            </blockquote>
          </div>
          <br>
          One way would be to create a new task that comes after unpack
          and creates the symlink.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">You may be interested in the
          rm_old_work class that can remove old work trees so there's
          only ever one work tree, and I believe due to how master does
          sysroot cleanup there's only ever one version in work/ now.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    But I need to the sysroot cleanup deliberately, right ?<br>
    <br>
    <br>
    ----<br>
    <pre class="moz-signature" cols="72">Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
NSN - PL/Wroclaw</pre>
    <br>
  </body>
</html>

--------------070902020608070401000607--
