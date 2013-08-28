Return-Path: <pab@pabigot.com>
Received: from m1plsmtpa01-05.prod.mesa1.secureserver.net
	(m1plsmtpa01-05.prod.mesa1.secureserver.net [64.202.165.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12E7FE01482
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 13:39:37 -0700 (PDT)
Received: from [192.168.65.10] ([66.41.60.82])
	by m1plsmtpa01-05.prod.mesa1.secureserver.net with 
	id JLfY1m00S1mTNtu01LfYeE; Wed, 28 Aug 2013 13:39:33 -0700
Message-ID: <521E6007.7090108@pabigot.com>
Date: Wed, 28 Aug 2013 15:39:35 -0500
From: "Peter A. Bigot" <pab@pabigot.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: Brian Hutchinson <b.hutchman@gmail.com>
References: <CAFZh4h_2zm=TU5Egmfxqkj9aUZoFf-zrXPB3TbtK03C3RfLFcg@mail.gmail.com>
	<CAFZh4h_izMzmN-nzBLH7myJtiLWGz0EdKce7MJYw1KkjzPhpmA@mail.gmail.com>
In-Reply-To: <CAFZh4h_izMzmN-nzBLH7myJtiLWGz0EdKce7MJYw1KkjzPhpmA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is there a OE core based mgetty?
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
X-List-Received-Date: Wed, 28 Aug 2013 20:39:41 -0000
Content-Type: multipart/alternative;
	boundary="------------060603070604090408030109"

--------------060603070604090408030109
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/28/2013 03:19 PM, Brian Hutchinson wrote:
> On Tue, Aug 27, 2013 at 6:56 PM, Brian Hutchinson 
> <b.hutchman@gmail.com <mailto:b.hutchman@gmail.com>> wrote:
>
>     Hi,
>
>     I need mgetty and don't see it anywhere in any of the OE core
>     based layers.  Did something replace it?  I'm trying to migrate
>     some OE classic work to OE core based distros.
>
>     Regards,
>
>     Brian
>
>
> Ping!  I'll take that as a "No" then.  :)
>
> So .... I'm working on adding this to OE Core based distros ... should 
> it go in meta/recipes-connectivity? The ppp stuff is in 
> meta/recipes-connectivity so I'm thinking that's where it belongs???

FWIW, linux-utils provides agetty; busybox also has a getty (was in 
tinylogin in earlier versions, but should be in busybox now).  Dunno if 
those would meet your needs.

Peter


--------------060603070604090408030109
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/28/2013 03:19 PM, Brian
      Hutchinson wrote:<br>
    </div>
    <blockquote
cite="mid:CAFZh4h_izMzmN-nzBLH7myJtiLWGz0EdKce7MJYw1KkjzPhpmA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">On Tue, Aug 27, 2013 at 6:56 PM,
            Brian Hutchinson <span dir="ltr">&lt;<a
                moz-do-not-send="true"
                href="mailto:b.hutchman@gmail.com" target="_blank">b.hutchman@gmail.com</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <p dir="ltr">Hi,</p>
              <p dir="ltr">I need mgetty and don't see it anywhere in
                any of the OE core based layers.&nbsp; Did something replace
                it?&nbsp; I'm trying to migrate some OE classic work to OE
                core based distros.</p>
              <p dir="ltr">Regards,</p>
              <p dir="ltr">Brian<br>
              </p>
            </blockquote>
            <div><br>
            </div>
            <div>Ping!&nbsp; I'll take that as a "No" then.&nbsp; :)&nbsp; <br>
              <br>
              So .... I'm working on adding this to OE Core based
              distros ... should it go in meta/recipes-connectivity?&nbsp;
              The ppp stuff is in meta/recipes-connectivity so I'm
              thinking that's where it belongs???<br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    FWIW, linux-utils provides agetty; busybox also has a getty (was in
    tinylogin in earlier versions, but should be in busybox now).&nbsp; Dunno
    if those would meet your needs.<br>
    <br>
    Peter<br>
    <br>
  </body>
</html>

--------------060603070604090408030109--
