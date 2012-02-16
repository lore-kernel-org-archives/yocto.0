Return-Path: <Hollis_Blanchard@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 577B1E003E1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 14:50:40 -0800 (PST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1RyA9t-0001Nl-M4 from Hollis_Blanchard@mentor.com ;
	Thu, 16 Feb 2012 14:50:37 -0800
Received: from SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Thu, 16 Feb 2012 14:50:37 -0800
Received: from [172.30.11.144] (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.1.289.1;
	Thu, 16 Feb 2012 14:50:36 -0800
Message-ID: <4F3D883C.8070709@mentor.com>
Date: Thu, 16 Feb 2012 14:50:36 -0800
From: Hollis Blanchard <hollis_blanchard@mentor.com>
Organization: Mentor Graphics, Embedded Systems Division
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4F3D6431.70505@mentor.com> <4F3D7F0D.3050904@windriver.com>
In-Reply-To: <4F3D7F0D.3050904@windriver.com>
X-OriginalArrivalTime: 16 Feb 2012 22:50:37.0636 (UTC)
	FILETIME=[666F6840:01CCECFD]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: trouble using a local kernel repo
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
X-List-Received-Date: Thu, 16 Feb 2012 22:50:40 -0000
Content-Type: multipart/alternative;
	boundary="------------070106020204050907010000"

--------------070106020204050907010000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 02/16/2012 02:11 PM, Bruce Ashfield wrote:
> On 12-02-16 03:16 PM, Hollis Blanchard wrote:
>> I'm trying to figure out how to use a cloned/modified copy of the
>> linux-yocto-3.0 git repository. Here's what I did:
>>
>> * cloned linux-yocto-3.0.git and committed to the meta branch
>> * specified my new repo:
>
> Very strange. Is this from the yocto master branch ?

I ran this:

    git clone git://git.yoctoproject.org/linux-yocto-3.0
    git checkout -t origin/meta -b meta
    vim
    git commit


[snip]
> That being said. If you go into your src tree. Do you see the meta and
> board branch ? Are they local branches ? Is your SRC_URI pointing at a
> bare clone, and not a non-bare one ?

As you can tell from my clone command above, it is a non-bare clone 
(though I have no idea what that actually means). I have lots of 
branches, but aside from master only my new "meta" branch is local:

-bash-3.2$ git branch -a
   master
* meta
   origin/HEAD
   origin/master
   origin/meta
   origin/yocto/base
   origin/yocto/eg20t
   origin/yocto/emgd
   origin/yocto/emgd-1.10
   origin/yocto/gma500
   origin/yocto/standard/arm-versatile-926ejs
   origin/yocto/standard/base
   origin/yocto/standard/beagleboard
   [...]


Hollis Blanchard
Mentor Graphics, Embedded Systems Division



--------------070106020204050907010000
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 02/16/2012 02:11 PM, Bruce Ashfield wrote:
    <blockquote cite="mid:4F3D7F0D.3050904@windriver.com" type="cite">On
      12-02-16 03:16 PM, Hollis Blanchard wrote:
      <br>
      <blockquote type="cite">I'm trying to figure out how to use a
        cloned/modified copy of the
        <br>
        linux-yocto-3.0 git repository. Here's what I did:
        <br>
        <br>
        * cloned linux-yocto-3.0.git and committed to the meta branch
        <br>
        * specified my new repo:
        <br>
      </blockquote>
      <br>
      Very strange. Is this from the yocto master branch ?
      <br>
    </blockquote>
    <br>
    I ran this:<br>
    <blockquote>git clone git://git.yoctoproject.org/linux-yocto-3.0<br>
      git&nbsp;checkout&nbsp;-t
      origin/meta&nbsp;-b&nbsp;meta<br>
      vim<br>
      git commit<br>
    </blockquote>
    <br>
    [snip]<br>
    <blockquote cite="mid:4F3D7F0D.3050904@windriver.com" type="cite">That
      being said. If you go into your src tree. Do you see the meta and
      <br>
      board branch ? Are they local branches ? Is your SRC_URI pointing
      at a
      <br>
      bare clone, and not a non-bare one ?
      <br>
    </blockquote>
    <br>
    As you can tell from my clone command above, it is a non-bare clone
    (though I have no idea what that actually means). I have lots of
    branches, but aside from master only my new "meta" branch is local:<br>
    <br>
    <pre>-bash-3.2$ git branch -a
  master
* meta
  origin/HEAD
  origin/master
  origin/meta
  origin/yocto/base
  origin/yocto/eg20t
  origin/yocto/emgd
  origin/yocto/emgd-1.10
  origin/yocto/gma500
  origin/yocto/standard/arm-versatile-926ejs
  origin/yocto/standard/base
  origin/yocto/standard/beagleboard
  [...]
</pre>
    <br>
    <pre class="moz-signature" cols="72">Hollis Blanchard
Mentor Graphics, Embedded Systems Division</pre>
    <br>
  </body>
</html>

--------------070106020204050907010000--
