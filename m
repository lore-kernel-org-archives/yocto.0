Return-Path: <jdamon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54796E00B9E; Thu, 15 Jun 2017 13:30:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdamon[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 019A9E00B99
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 13:30:35 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id l89so12385169pfi.2
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 13:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:cc:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=udVjkyvEAeBldFWF9r+PUJeiaLgd5MUxxJY+A4DR7EY=;
	b=je3ziPBSlPQ5W5bbgUtPOrxsVJ6DEw3CzMmGUUPnFFO6i2ba7oe/JR5c7GO8kDkpGN
	Agv/mafYe2J7dDZa2uQgd9BASgeIQRu+KRAm3146zLgJOv5LvUUC3+9ZRdoAV94sZuTL
	wo+kzqXP0oj/GeK8Pv+SP+2b9ZPEvKcd6N3RBLovLiJLfXv1gOPnqNlHWiWgrPeaTj1B
	YbfRbhe7ioTe367BVJOL5ejiNhZJH9jroGjrnKkSQSyudtjzexmLqSsa7mVyBfkAhlsA
	ZPKuM5xKPtzDDdVpBiyrmO3nvJ+h4FqSk+xwnk7OiB4vYYO2Fuhg5iVh1jCAsppHOa9P
	+ggQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:cc:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=udVjkyvEAeBldFWF9r+PUJeiaLgd5MUxxJY+A4DR7EY=;
	b=bFVe+zlDniFbKReXUP78IfhySGtew3bptQpMysdeoVl7h+Fe6ss8JY/8/E/A+Yz2rC
	76UFuAlIEQdheQcoeaDGZg9FqSnb6qL5IAN3zQu+xXihr28JE1/rAO+veSEe6rvptdEa
	IWKxjzDi+EtYnaBuIFmAl7rq8VGg3R+sLiD6AdPvCoFdVPNrTO3/tr8GxzJaedRjAX4t
	qUcWNYc/gBykbclpTyersasqw42ZI25zMDk8AxztKvAXxWKcIEQFQ0guMyLYKE0nYlJv
	4J0r2EgA2o4k96itlchn/sVBf5FJI/oQr14He8Hd2cbFBVU8B1pAQJlpcFZViDWsgymN
	c1Bw==
X-Gm-Message-State: AKS2vOyaTjj7NAqyISmEprncF/f06hI8LQAX9WF1HURr3ntjIHhVrTrA
	u+ENZlwmui0890OLKMk=
X-Received: by 10.84.167.2 with SMTP id c2mr8322792plb.155.1497558634771;
	Thu, 15 Jun 2017 13:30:34 -0700 (PDT)
Received: from [10.0.0.98] ([216.84.176.126]) by smtp.gmail.com with ESMTPSA id
	g78sm225828pfb.122.2017.06.15.13.30.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 15 Jun 2017 13:30:33 -0700 (PDT)
From: Jimi Damon <jdamon@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <bff03cd3-258c-95fd-63de-548168f363d0@gmail.com>
	<9cd8d4c6-cad7-3b26-6894-62aa0fd9f77f@mlbassoc.com>
	<1721976.Tat4yvfF10@peggleto-mobl.ger.corp.intel.com>
Message-ID: <ceb5a2e1-11ef-c560-f2f3-3158c0a13337@gmail.com>
Date: Thu, 15 Jun 2017 13:30:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <1721976.Tat4yvfF10@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: devshell not working for Qt or Boundary Devices based yocto
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
X-List-Received-Date: Thu, 15 Jun 2017 20:30:37 -0000
Content-Type: multipart/alternative;
	boundary="------------083CDF9954F8346102463942"
Content-Language: en-US

--------------083CDF9954F8346102463942
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am not getting a separate terminal or even a different shell ( I would 
assume that Control-D or exit would get me back to the original shell ). 
Note that *bitbake -c pydevshell <anyrec**ipe>* also fails in that no 
python shell is started.


In fact, I've deduced that something is set in my Environment in my Bash 
shell that is causing this corruption.


For example, I created a brand new user called "testperson" with shell 
Zsh ( different than my bash )


Using the exact same poky distribution that was setup as follows

> git clone git://git.yoctoproject.org/poky.git
>
> cd poky
>
> git clone git://git.yoctoproject.org/meta-raspberrypi
>
> MACHINE=raspberrypi3 . ./oe-init-build-env mybuild
>
> bitbake  -c devshell gettext
>
, this part worked for the testuser with zsh .


However, with my bash environment I get  :


bitbake -D -c devshell gettext

> ...
>
> DEBUG: Inheriting /media/build/poky/meta/classes/autotools.bbclass 
> (from /media/build/poky/meta/recipes-core/gettext/gettext_0.19.8.1.bb:29)
> DEBUG: Inheriting /media/build/poky/meta/classes/siteinfo.bbclass 
> (from /media/build/poky/meta/classes/autotools.bbclass:24)
> DEBUG: Inheriting /media/build/poky/meta/classes/siteconfig.bbclass 
> (from /media/build/poky/meta/classes/autotools.bbclass:251)
> DEBUG: Inheriting /media/build/poky/meta/classes/texinfo.bbclass (from 
> /media/build/poky/meta/recipes-core/gettext/gettext_0.19.8.1.bb:29)
> DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', 
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 
> 'common']
> DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', 
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 
> 'common']
> DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', 
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 
> 'common']
> DEBUG: Executing task do_devshell
> DEBUG: gettext-0.19.8.1-r0 do_devshell: Attempting to spawn terminal 
> "xterm"
> DEBUG: Teardown for bitbake-worker
>

The teardown comes immediately after the "Attemping to spawn terminal..."


Compared to

> ...
> DEBUG: Inheriting /media/build/poky/meta/classes/siteconfig.bbclass 
> (from /media/build/poky/meta/classes/autotools.bbclass:251)
> DEBUG: Inheriting /media/build/poky/meta/classes/texinfo.bbclass (from 
> /media/build/poky/meta/recipes-core/gettext/gettext_0.19.8.1.bb:29)
> DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common', 
> 'common-linux', 'common-glibc', 'i586-linux', 'common']
> DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common', 
> 'common-linux', 'common-glibc', 'i586-linux', 'common']
> DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common', 
> 'common-linux', 'common-glibc', 'i586-linux', 'common']
> DEBUG: Executing task do_devshell
> DEBUG: gettext-0.19.8.1-r0 do_devshell: Attempting to spawn terminal 
> "xterm"
> Currently  1 running tasks (281 of 281)  99% 
> |##################################################################################################### 
> |

in the testuser.


On a side note, how can I produce more debugging output besides "-D" for 
the bitbake so that I can find out more about
where the do_devshell task is failing ?

Thanks,

-Jimi



On 06/15/2017 01:47 AM, Paul Eggleton wrote:
> On Thursday, 15 June 2017 5:12:19 AM CEST Gary Thomas wrote:
>> On 2017-06-15 01:58, Jimi Damon wrote:
>>> I'm trying out two different yocto distributions and in each one the
>>> devshell doens't work. Instead it just gets to the
>>> Summary line and returns to my normal shell ( bash ) .
>> What are you expecting to happen?  'devshell' is just that - a shell
>> environment (e.g. bash) where you are set up to "develop" (tinker, explore,
>> etc) the given recipe.
> I think Jimi is saying that it doesn't appear to be launching a separate
> terminal / shell. Right?
>
> Assuming that's what's happening, the devshell code is supposed to print out
> an error when it can't launch a suitable terminal, but if the terminal isn't
> doing what it should then that might leave you in this situation. Does
> log.do_devshell for the recipe indicate anything?
>
> Cheers,
> Paul
>


--------------083CDF9954F8346102463942
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font face="Monaco">Hi,</font></p>
    <p><font face="Monaco">I am not getting a separate terminal or even
        a different shell ( I would assume that Control-D or exit would
        get me back to the original shell ). </font><font face="Monaco">Note
        that <b>bitbake -c pydevshell &lt;anyrec</b><b>ipe&gt;</b> 
        also fails in that no python shell is started.</font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">In fact, I've deduced that something is set
        in my Environment in my Bash shell that is causing this
        corruption.</font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">For example, I created a brand new user
        called "testperson" with shell Zsh ( different than my bash ) <br>
      </font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">Using the exact same poky distribution that
        was setup as follows <br>
      </font></p>
    <p><font face="Monaco">
        <blockquote type="cite">
          <p><font face="Monaco">git clone
              git://git.yoctoproject.org/poky.git<br>
            </font></p>
          <p><font face="Monaco">cd poky</font></p>
          <p><font face="Monaco">git clone
              git://git.yoctoproject.org/meta-raspberrypi<br>
            </font></p>
          <p><font face="Monaco">MACHINE=raspberrypi3 .
              ./oe-init-build-env mybuild <br>
            </font></p>
          <p><font face="Monaco">bitbake  -c devshell gettext<br>
            </font></p>
        </blockquote>
        , this part worked for the testuser with zsh .</font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">However, with my bash environment I get  :</font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">bitbake -D -c devshell gettext<br>
      </font></p>
    <blockquote type="cite">
      <p><font face="Monaco">...</font></p>
      <p><font face="Monaco">DEBUG: Inheriting
          /media/build/poky/meta/classes/autotools.bbclass (from
          /media/build/poky/meta/recipes-core/gettext/gettext_0.19.8.1.bb:29)<br>
          DEBUG: Inheriting
          /media/build/poky/meta/classes/siteinfo.bbclass (from
          /media/build/poky/meta/classes/autotools.bbclass:24)<br>
          DEBUG: Inheriting
          /media/build/poky/meta/classes/siteconfig.bbclass (from
          /media/build/poky/meta/classes/autotools.bbclass:251)<br>
          DEBUG: Inheriting
          /media/build/poky/meta/classes/texinfo.bbclass (from
          /media/build/poky/meta/recipes-core/gettext/gettext_0.19.8.1.bb:29)<br>
          DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
          'arm-32', 'common-linux', 'common-glibc', 'arm-linux',
          'arm-linux-gnueabi', 'common']<br>
          DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
          'arm-32', 'common-linux', 'common-glibc', 'arm-linux',
          'arm-linux-gnueabi', 'common']<br>
          DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
          'arm-32', 'common-linux', 'common-glibc', 'arm-linux',
          'arm-linux-gnueabi', 'common']<br>
          DEBUG: Executing task do_devshell<br>
          DEBUG: gettext-0.19.8.1-r0 do_devshell: Attempting to spawn
          terminal "xterm"<br>
          DEBUG: Teardown for bitbake-worker</font><font face="Monaco"><br>
        </font></p>
    </blockquote>
    <br>
    The teardown comes immediately after the "Attemping to spawn
    terminal..."<br>
    <br>
    <br>
    Compared to <br>
    <br>
    <blockquote type="cite">...<br>
      DEBUG: Inheriting
      /media/build/poky/meta/classes/siteconfig.bbclass (from
      /media/build/poky/meta/classes/autotools.bbclass:251)<br>
      DEBUG: Inheriting /media/build/poky/meta/classes/texinfo.bbclass
      (from
      /media/build/poky/meta/recipes-core/gettext/gettext_0.19.8.1.bb:29)<br>
      DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
      'common-linux', 'common-glibc', 'i586-linux', 'common']<br>
      DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
      'common-linux', 'common-glibc', 'i586-linux', 'common']<br>
      DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
      'common-linux', 'common-glibc', 'i586-linux', 'common']<br>
      DEBUG: Executing task do_devshell<br>
      DEBUG: gettext-0.19.8.1-r0 do_devshell: Attempting to spawn
      terminal "xterm"<br>
      Currently  1 running tasks (281 of 281)  99%
|#####################################################################################################
      |<br>
    </blockquote>
    <br>
    in the testuser.<br>
    <br>
    <br>
    On a side note, how can I produce more debugging output besides "-D"
    for the bitbake so that I can find out more about<br>
    where the do_devshell task is failing ? <br>
    <br>
    Thanks,<br>
    <br>
    -Jimi<br>
    <br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 06/15/2017 01:47 AM, Paul Eggleton
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1721976.Tat4yvfF10@peggleto-mobl.ger.corp.intel.com">
      <pre wrap="">On Thursday, 15 June 2017 5:12:19 AM CEST Gary Thomas wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">On 2017-06-15 01:58, Jimi Damon wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">I'm trying out two different yocto distributions and in each one the
devshell doens't work. Instead it just gets to the 
Summary line and returns to my normal shell ( bash ) .
</pre>
        </blockquote>
        <pre wrap="">What are you expecting to happen?  'devshell' is just that - a shell
environment (e.g. bash) where you are set up to "develop" (tinker, explore,
etc) the given recipe.
</pre>
      </blockquote>
      <pre wrap="">I think Jimi is saying that it doesn't appear to be launching a separate 
terminal / shell. Right?

Assuming that's what's happening, the devshell code is supposed to print out 
an error when it can't launch a suitable terminal, but if the terminal isn't 
doing what it should then that might leave you in this situation. Does 
log.do_devshell for the recipe indicate anything?

Cheers,
Paul

</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------083CDF9954F8346102463942--
