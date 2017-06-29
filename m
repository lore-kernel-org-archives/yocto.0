Return-Path: <jdamon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7E00E00BD2; Thu, 29 Jun 2017 13:39:50 -0700 (PDT)
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
	*      [74.125.83.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f45.google.com (mail-pg0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D545E00B57
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 13:39:40 -0700 (PDT)
Received: by mail-pg0-f45.google.com with SMTP id t186so53446838pgb.1
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 13:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=ANmYAC1v2ASaGw8Koi93ScwZu20gpuCrehONpXve1eM=;
	b=portZRVhI40KZQmR1AeCn7kRkBEtSj9eCq5dat0ZZ2xa7gs2AaDSmIqUEJo7hC2yFZ
	j0zTdQsrEZv0dQHNirhrO4vrZ1mtcQyhoZf8YjBZ8fS7b2jKUrk6uJsnWl+tz3sSkz+l
	TagWQiMQhB5mzH5MVbACZ9FGPgmXvd+Eg7526OYkkhAQ1cWcgdmccX1e0POOJ9cup5fx
	85EC4CQPtHpQQwmaOwzZ7sbXKNxnGLPJxPgH7LD+OK+25Y92EvXK5vrSL9A3CiwDh+Ty
	aI5Hh/cDpzzOPvhAzozYaIecrteIHAPZsPbG4/bpd7TR4KNcFRLvlVsiPsyHgOGl1SWU
	oOvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=ANmYAC1v2ASaGw8Koi93ScwZu20gpuCrehONpXve1eM=;
	b=VDX8vX6RdUx5NSoY7sr/6acVqwAwE+lWiWa+vtfPN3BpqddaAd+aCi7I6qKC6ApkH2
	V7+I8CQqCc1RETnH0s3ZbkNzmE2OvzF0ba2XYlaE4KTOTKezArrzKdrmwRu7LVrENf0H
	5t2WznIbLILEqbcqlkYrf3B52MRxJpGOUoafTVFHm0AFhjrKpZSS36cme0STYFIc3h9I
	LiJkhJ3dMSrbpANJC66FNnCWFe6VX6AAKBBIMRAMr6C8Ow2vKBhMt5KWxerxg1jdsE5B
	PP8IpdXWJjkCTGgqNNGA7DxOtDvAg74a9Hq2uZMNrnzbC4Jzs6rHYlXkwKrkDba4njku
	jRTg==
X-Gm-Message-State: AKS2vOwwYQsbgbqT/VJYJNfXas28IQI1wCxGDIxrjhYERvumwNtXo016
	tF3BB7SiqqDZ5m6xVkU=
X-Received: by 10.98.94.134 with SMTP id s128mr17975252pfb.43.1498768779864;
	Thu, 29 Jun 2017 13:39:39 -0700 (PDT)
Received: from [10.0.0.98] ([216.84.176.126]) by smtp.gmail.com with ESMTPSA id
	a4sm15077830pfc.22.2017.06.29.13.39.38 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Jun 2017 13:39:38 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Jimi Damon <jdamon@gmail.com>
Message-ID: <88900ad2-dfd7-a76b-d1d6-bdaf0dc68654@gmail.com>
Date: Thu, 29 Jun 2017 13:39:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: How to debug a mirror fetch error
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
X-List-Received-Date: Thu, 29 Jun 2017 20:39:50 -0000
Content-Type: multipart/alternative;
	boundary="------------FDBF1296233817295063F520"
Content-Language: en-US

--------------FDBF1296233817295063F520
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,


I've gotten almost all of my files downloaded using a local mirror for a 
new build. I'm having trouble debugging one specific case where it 
appears my mirror rules can't find the package that it should be finding 
in the local mirror directory. This is my hypothesis  as I've worked 
through other issues by adding more rules to the MIRRORS variable in 
local.conf


So far I have

>
> MIRRORS ?= "\
> git://.*/.*         file://media/build/mirror/ \n \
> git://.*/.*/.*      file://media/build/mirror/ \n \
> git://.*/.*/.*/.*   file://media/build/mirror/ \n \
> ftp://.*/.*         file://media/build/mirror/ \n \
> http://.*/.*        file://media/build/mirror/ \n \
> svn://.*/.*         file://media/build/mirror/ \n \
> https://.*/.*       file://media/build/mirror/ \n \
> https://.*/.*/.*    file://media/build/mirror/ \n \
> https://.*/.*/.*/.* file://media/build/mirror/ \n \
> "

I'm running into a problem debugging while this one final package isn't 
being found from my local mirror. The package is adbd  and the error I'm 
seeing is


> ERROR: adbd-android-5.0.1_r1-r0 do_fetch: Network access disabled 
> through BB_NO_NETWORK (or set indirectly due to use of 
> BB_FETCH_PREMIRRORONLY) but access requested with command git -c 
> core.fsyncobjectfiles=0 ls-remote 
> https://android.googlesource.com/platform/system/core  (for url None)
> ERROR: adbd-android-5.0.1_r1-r0 do_fetch: Function failed: base_do_fetch
> ERROR: Logfile of failure stored in: 
> /media/build/NewestBuild/build-nitrogen6x/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/adbd/android-5.0.1_r1-r0/temp/log.do_fetch.25649
> ERROR: Task 
> (/media/build/NewestBuild/sources/meta-boot2qt/recipes/adbd/adbd.bb:do_fetch) 
> failed with exit code '1'
> DEBUG: Teardown for bitbake-worker
> NOTE: Tasks Summary: Attempted 1 tasks of which 0 didn't need to be 
> rerun and 1 failed.

I've inspected the mirror file,  /media/build/mirror and there is the 
package
git2_android.googlesource.com.platform.system.core.tar.gz


If I untar it to another location, I find it is a git repo that does in 
fact have adbd

> mkdir tmpdir
> cp git2_android.googlesource.com.platform.system.core.tar.gz tmpdir
> cd tmpdir
> tar -xvf git2_android.googlesource.com.platform.system.core.tar.gz
> mkdir ../testdir
> cd ../testdir
> git clone ../tmpdir
> cd tmpdir


and adb exists


What is the recommended way to debug this more ?

I've seen on yocto the -nv switch, but this doesn't seem to produce any 
useful information for a local mirror Git clone.


Thanks,



--------------FDBF1296233817295063F520
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font face="Monaco">Hi,</font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">I've gotten almost all of my files downloaded
        using a local mirror for a new build. I'm having trouble
        debugging one specific case where it appears my mirror rules
        can't find the package that it should be finding in the local
        mirror directory. This is my hypothesis  as I've worked through
        other issues by adding more rules to the MIRRORS variable in
        local.conf</font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">So far I have</font></p>
    <blockquote type="cite"><br>
      MIRRORS ?= "\<br>
      git://.*/.*         <a class="moz-txt-link-freetext" href="file://media/build/mirror/">file://media/build/mirror/</a> \n \ <br>
      git://.*/.*/.*      <a class="moz-txt-link-freetext" href="file://media/build/mirror/">file://media/build/mirror/</a> \n \ <br>
      git://.*/.*/.*/.*   <a class="moz-txt-link-freetext" href="file://media/build/mirror/">file://media/build/mirror/</a> \n \ <br>
      ftp://.*/.*         <a class="moz-txt-link-freetext" href="file://media/build/mirror/">file://media/build/mirror/</a> \n \<br>
      http://.*/.*        <a class="moz-txt-link-freetext" href="file://media/build/mirror/">file://media/build/mirror/</a> \n \<br>
      svn://.*/.*         <a class="moz-txt-link-freetext" href="file://media/build/mirror/">file://media/build/mirror/</a> \n \<br>
      https://.*/.*       <a class="moz-txt-link-freetext" href="file://media/build/mirror/">file://media/build/mirror/</a> \n \<br>
      https://.*/.*/.*    <a class="moz-txt-link-freetext" href="file://media/build/mirror/">file://media/build/mirror/</a> \n \<br>
      https://.*/.*/.*/.* <a class="moz-txt-link-freetext" href="file://media/build/mirror/">file://media/build/mirror/</a> \n \<br>
      "</blockquote>
    <br>
    I'm running into a problem debugging while this one final package
    isn't being found from my local mirror. The package is adbd  and the
    error I'm seeing is <br>
    <br>
    <br>
    <blockquote type="cite">ERROR: adbd-android-5.0.1_r1-r0 do_fetch:
      Network access disabled through BB_NO_NETWORK (or set indirectly
      due to use of BB_FETCH_PREMIRRORONLY) but access requested with
      command git -c core.fsyncobjectfiles=0 ls-remote
      <a class="moz-txt-link-freetext" href="https://android.googlesource.com/platform/system/core">https://android.googlesource.com/platform/system/core</a>  (for url
      None)<br>
      ERROR: adbd-android-5.0.1_r1-r0 do_fetch: Function failed:
      base_do_fetch<br>
      ERROR: Logfile of failure stored in:
/media/build/NewestBuild/build-nitrogen6x/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/adbd/android-5.0.1_r1-r0/temp/log.do_fetch.25649<br>
      ERROR: Task
(/media/build/NewestBuild/sources/meta-boot2qt/recipes/adbd/adbd.bb:do_fetch)
      failed with exit code '1'<br>
      DEBUG: Teardown for bitbake-worker<br>
      NOTE: Tasks Summary: Attempted 1 tasks of which 0 didn't need to
      be rerun and 1 failed.<br>
    </blockquote>
    <br>
    I've inspected the mirror file,  /media/build/mirror and there is
    the package<br>
    git2_android.googlesource.com.platform.system.core.tar.gz<br>
    <br>
    <br>
    If I untar it to another location, I find it is a git repo that does
    in fact have adbd<br>
    <br>
    <blockquote type="cite">mkdir tmpdir<br>
      cp git2_android.googlesource.com.platform.system.core.tar.gz
      tmpdir<br>
      cd tmpdir<br>
      tar -xvf git2_android.googlesource.com.platform.system.core.tar.gz<br>
      mkdir ../testdir<br>
      cd ../testdir<br>
      git clone ../tmpdir<br>
      cd tmpdir</blockquote>
    <br>
    <br>
    and adb exists<br>
    <br>
    <br>
    What is the recommended way to debug this more ? <br>
    <br>
    I've seen on yocto the -nv switch, but this doesn't seem to produce
    any useful information for a local mirror Git clone.<br>
    <br>
    <br>
    Thanks,<br>
    <br>
    <br>
  </body>
</html>

--------------FDBF1296233817295063F520--
