Return-Path: <mhalstead@linuxfoundation.org>
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60E8DE003C7
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 14:48:30 -0700 (PDT)
Received: by mail-pa0-f45.google.com with SMTP id kl14so11399987pab.4
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 14:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type;
	bh=gSlL1Up3Cnj4jmCfxoUXBgJjrzQIhaFKRdj8mV6sEj0=;
	b=f5HZD5Y+ioKYFvqZD5h5465vih5diESqTH8y3HwJ0LCYGxjSBA+tVLPA3Juk2fTpX2
	Xy5mSr61POozxv0o06NAZ2Ba6zs6r/DVFYiRdI3W5kPQk3vh3z1WMUSwO/J1myQTCEwy
	xZwaDOm4kzbcteon8DEnr8J2+E/lD99+4g0sE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:message-id:date:from:user-agent
	:mime-version:to:subject:references:in-reply-to:content-type;
	bh=gSlL1Up3Cnj4jmCfxoUXBgJjrzQIhaFKRdj8mV6sEj0=;
	b=d/9RMiFrG9ch1nCiElgaJAm/GFvj4i6cEHhjS13sqwC1thN88LO9t3YA+srWs50pyY
	5HY9KbIbGJIK08oD0F1x3pfW+AlTwJuBaI0JcHMsB+tQ9aCdUw4ZgtcfTh5j45uTJ+9e
	0Gd44zcf62mRrntsucUZUphve044GLCjs0SnsFCFSuBUkXkdJdOTRgaGO6gk1fnpc3/M
	BXeWAUt1VsomWw/mgGtcP6FkaeQ0AL6vuX7UuZVamzEZKH8m+9XYbBPyAFKLbJBTIaDy
	xAXFLM8qmDwJj7C7Or5WoCVuLjOr3UH3QzbZ2IZ9rqrbFj+cB5dqXvai0N+uQ3lNRnPh
	OOLw==
X-Gm-Message-State: ALoCoQlZNpai2kzjnidBhWr6405iy7zad2pmRDl2iujQFxLRaa9lKIxfHzNK0Jxr9igPQIb7M7Dp
X-Received: by 10.69.31.171 with SMTP id kn11mr11294113pbd.47.1397684909428;
	Wed, 16 Apr 2014 14:48:29 -0700 (PDT)
Received: from pride.local ([192.102.209.8]) by mx.google.com with ESMTPSA id
	pq3sm49082604pbb.57.2014.04.16.14.48.28 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 16 Apr 2014 14:48:28 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <534EFAAB.2010706@yoctoproject.org>
Date: Wed, 16 Apr 2014 14:48:27 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CALTF=oJyYWTJKauMk2VmdAoL+1v6vnVq892Og=6h3C-2c1XBcg@mail.gmail.com>
In-Reply-To: <CALTF=oJyYWTJKauMk2VmdAoL+1v6vnVq892Og=6h3C-2c1XBcg@mail.gmail.com>
X-Enigmail-Version: 1.6
Subject: Re: Git fetch with user/pass in a recipe
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
X-List-Received-Date: Wed, 16 Apr 2014 21:48:31 -0000
Content-Type: multipart/alternative;
	boundary="------------030907000608060105010408"

--------------030907000608060105010408
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/16/2014 02:15 PM, Ronaldo Nunez wrote:
> Hi all!
>
> I'm trying to create a custom recipe to a proprietary software from my
> company. The code should be fetched from a git server, with username
> and password authentication through a http connection (port 8080).
>
> From the terminal I use the following command line to clone the project=
:
>
> $ git clone http://username:pass@server:8080/project.git
>
> well in the bitbake recipe, I tried the following in SRC_URI variable,
> with no success:
>
> SRC_URI =3D "git://username:pass@server:8080/project.git;protocol=3Dhtt=
p"
>
> I also tried:
>
> SRC_URI =3D "git://server:8080/project.git;protocol=3Dhttp;user=3Dusern=
ame"

It isn't mentioned at
http://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-man=
ual.html#git-fetcher
but looking at
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/bitbake/lib/bb/fetch2=
/git.py?h=3Ddora
it seems that including the password as part of the user parameter
should work.

For example,
SRC_URI =3D
"git://server:8080/project.git;protocol=3Dhttp;user=3Dusername:password"


Michael Halstead
Yocto Project / Sys Admin


>
> Again, with no success.
>
> Well, any help is welcome. Thanks in advance.
>
> --=20
> Ronaldo Nunez
>
>


--------------030907000608060105010408
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 04/16/2014 02:15 PM, Ronaldo Nunez
      wrote:<br>
    </div>
    <blockquote
cite="mid:CALTF=oJyYWTJKauMk2VmdAoL+1v6vnVq892Og=6h3C-2c1XBcg@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi all!
        <div><br>
        </div>
        <div>I'm trying to create a custom recipe to a proprietary
          software from my company. The code should be fetched from a
          git server, with username and password authentication through
          a http connection (port 8080).</div>
        <div><br>
        </div>
        <div>From the terminal I use the following command line to clone
          the project:</div>
        <div><br>
        </div>
        <div>$ git clone <a class="moz-txt-link-freetext" href="http://username:pass@server:8080/project.git">http://username:pass@server:8080/project.git</a></div>
        <div><br>
        </div>
        <div>well in the bitbake recipe, I tried the following in
          SRC_URI variable, with no success:</div>
        <div><br>
        </div>
        <div>SRC_URI =
          <a class="moz-txt-link-rfc2396E" href="mailto:git://username:pass@server:8080/project.git;protocol=http">"git://username:pass@server:8080/project.git;protocol=http"</a></div>
        <div><br>
        </div>
        <div>I also tried:</div>
        <div><br>
        </div>
        <div>
          <div>SRC_URI =
            "git://server:8080/project.git;protocol=http;user=username"<br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    It isn't mentioned at
    <a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#git-fetcher">http://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#git-fetcher</a>
    but looking at
    <a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/bitbake/lib/bb/fetch2/git.py?h=dora">http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/bitbake/lib/bb/fetch2/git.py?h=dora</a>
    it seems that including the password as part of the user parameter
    should work.<br>
    <br>
    For example,<br>
    SRC_URI =
    "git://server:8080/project.git;protocol=http;user=username:password"<br>
    <br>
    <br>
    <pre class="moz-signature" cols="72">Michael Halstead
Yocto Project / Sys Admin</pre>
    <br>
    <blockquote
cite="mid:CALTF=oJyYWTJKauMk2VmdAoL+1v6vnVq892Og=6h3C-2c1XBcg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div>
          </div>
          <div><br>
          </div>
          <div>Again, with no success.</div>
          <div><br>
          </div>
          <div>Well, any help is welcome. Thanks in advance.</div>
          <div><br>
          </div>
          -- <br>
          <div dir="ltr">Ronaldo Nunez</div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------030907000608060105010408--
