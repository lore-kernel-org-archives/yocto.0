Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC730E0071E; Fri, 29 Apr 2016 08:46:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A983E00566
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 08:46:29 -0700 (PDT)
Received: by mail-ig0-f178.google.com with SMTP id s8so23109343ign.0
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 08:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Yf5IL6i8+/QpZLmC1p0SqlgVCZveVcPPuxS33VCtOJs=;
	b=pRlZcswlrqJ72C9xdhrepLBJKxX1ItjE+3EWs3B0Zql6PK7BQImXUDjNJ31iPqP9T9
	oMWmW/q9AUpt0LXv9538Gvyukg1OnJ+fFeWHbIq9AHt4/noXYZw6VsRu0M0ejslzu2ib
	tI0Op6HJgvi8FYDx60z2rIwnG5LOONPSRabAgEW9S48Oq6AhAd0s41gF/X3vcSW0Ysmd
	dvth7+xUnczsmSlC/h19lxXME0ES2wDhXW9RHR5qyQWw7cY3u+p5xbkJHAc3WhkIHG0R
	HAh8u/PWJ81sfW11EfU5o7OhTxxcCE/3lGMvy8THH7inwfrdfXaeH9vh50bpm2Ub2cQ7
	6Ovw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Yf5IL6i8+/QpZLmC1p0SqlgVCZveVcPPuxS33VCtOJs=;
	b=jyc1u8LKWhioqDNZzrHUuoYrWL45Gjj9KBu22GgMhnpinCx3UAAxyQJ85Rz0FskbUG
	ZAURTRBhv0HPbthKdn7NQhJcYnRykVBtw4ug86/CuTaTC0Vo8OUA0tGEeq2qvZ3ZkC44
	KQrp2jIYEp8g5mWrTBeKaeCGModt4vRy7JEHIu2Z8X3lCJPsSSz9mzRg6k+PwRMpVPcB
	e7k1WSHC9mYvvtJkuquumhaRtu7ARf+5TOh5icL+cHr9WBnV6eorlkE1hJXmKCMFVp6O
	pS1uqVJ71GG+IRvi+d9CST1ICnApnyjrwGanj+jhXj/LlMMu9FnfAtQ1T7S81sj/UigL
	jSvg==
X-Gm-Message-State: AOPr4FWs9eRuNHKHyKefxubqA0qp6WtHhvK/Mqw4uTgOOKmE19lpVlWgPOelL1jDHtB31DeUEAwV4su1slw4bEfJ
X-Received: by 10.50.150.1 with SMTP id ue1mr5287919igb.52.1461944788590; Fri,
	29 Apr 2016 08:46:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Fri, 29 Apr 2016 08:46:09 -0700 (PDT)
In-Reply-To: <50e502ee999733a064eb5b45ba87450648485929.1461913316.git.jussi.kukkonen@intel.com>
References: <cover.1461913316.git.jussi.kukkonen@intel.com>
	<50e502ee999733a064eb5b45ba87450648485929.1461913316.git.jussi.kukkonen@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 29 Apr 2016 16:46:09 +0100
Message-ID: <CAJTo0Lbg14X-m8BarjZtD7SQW7_tTmSL0XvnOTTq-sawO+9iSQ@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [screenshot][PATCH 1/1] Quick port to Gtk/Gdk 3
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
X-List-Received-Date: Fri, 29 Apr 2016 15:46:32 -0000
Content-Type: multipart/alternative; boundary=001a11c30f0ace64030531a18b0f

--001a11c30f0ace64030531a18b0f
Content-Type: text/plain; charset=UTF-8

On 29 April 2016 at 08:06, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> This still has all the problems that the new API would allow us to
> fix: mainly that multiple displays will almost certainly not work
> at all.
>

screenshot-utils.c: In function 'screenshot_grab_lock':
screenshot-utils.c:251:3: warning: 'gdk_pointer_grab' is deprecated: Use
'gdk_device_grab' instead [-Wdeprecated-declarations]
   gdk_pointer_grab (gtk_widget_get_window (selection_window), FALSE, 0,
NULL,
   ^
In file included from /usr/include/gtk-3.0/gdk/gdk.h:47:0,
                 from /usr/include/gtk-3.0/gtk/gtk.h:30,
                 from screenshot-utils.h:4,
                 from screenshot-utils.c:2:
/usr/include/gtk-3.0/gdk/gdkmain.h:86:15: note: declared here
 GdkGrabStatus gdk_pointer_grab       (GdkWindow    *window,
               ^
screenshot-utils.c:253:3: warning: 'gdk_cursor_unref' is deprecated: Use
'g_object_unref' instead [-Wdeprecated-declarations]
   gdk_cursor_unref (cursor);
   ^
In file included from /usr/include/gtk-3.0/gdk/gdk.h:34:0,
                 from /usr/include/gtk-3.0/gtk/gtk.h:30,
                 from screenshot-utils.h:4,
                 from screenshot-utils.c:2:
/usr/include/gtk-3.0/gdk/gdkcursor.h:247:13: note: declared here
 void        gdk_cursor_unref             (GdkCursor       *cursor);
             ^
screenshot-utils.c: In function 'get_text_property':
screenshot-utils.c:121:3: warning: ignoring return value of
'gdk_error_trap_pop', declared with attribute warn_unused_result
[-Wunused-result]
   gdk_error_trap_pop ();
   ^
  CC       screenshot-ui.lo
screenshot-ui.c: In function 'screenshot':
screenshot-ui.c:49:46: warning: 'GtkStock' is deprecated
[-Wdeprecated-declarations]
                                              GTK_STOCK_CANCEL,
GTK_RESPONSE_REJECT,
                                              ^
screenshot-ui.c:50:46: warning: 'GtkStock' is deprecated
[-Wdeprecated-declarations]
                                              GTK_STOCK_SAVE,
GTK_RESPONSE_ACCEPT,
                                              ^

The stock ones look easy to fix, the device ones less so so unless I'm
wrong we can leave those for now.

Ross

--001a11c30f0ace64030531a18b0f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 April 2016 at 08:06, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"=
mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204)=
;border-left-style:solid;padding-left:1ex"><div id=3D":2cf" class=3D"">This=
 still has all the problems that the new API would allow us to<br>
fix: mainly that multiple displays will almost certainly not work<br>
at all.</div></blockquote></div><br><div class=3D"gmail_extra">screenshot-u=
tils.c: In function &#39;screenshot_grab_lock&#39;:</div><div class=3D"gmai=
l_extra">screenshot-utils.c:251:3: warning: &#39;gdk_pointer_grab&#39; is d=
eprecated: Use &#39;gdk_device_grab&#39; instead [-Wdeprecated-declarations=
]</div><div class=3D"gmail_extra">=C2=A0 =C2=A0gdk_pointer_grab (gtk_widget=
_get_window (selection_window), FALSE, 0, NULL,</div><div class=3D"gmail_ex=
tra">=C2=A0 =C2=A0^</div><div class=3D"gmail_extra">In file included from /=
usr/include/gtk-3.0/gdk/gdk.h:47:0,</div><div class=3D"gmail_extra">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /usr/include/gt=
k-3.0/gtk/gtk.h:30,</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from screenshot-utils.h:4,</div><d=
iv class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0from screenshot-utils.c:2:</div><div class=3D"gmail_extra">/us=
r/include/gtk-3.0/gdk/gdkmain.h:86:15: note: declared here</div><div class=
=3D"gmail_extra">=C2=A0GdkGrabStatus gdk_pointer_grab =C2=A0 =C2=A0 =C2=A0 =
(GdkWindow =C2=A0 =C2=A0*window,</div><div class=3D"gmail_extra">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^</div><div class=3D"gmail_ext=
ra">screenshot-utils.c:253:3: warning: &#39;gdk_cursor_unref&#39; is deprec=
ated: Use &#39;g_object_unref&#39; instead [-Wdeprecated-declarations]</div=
><div class=3D"gmail_extra">=C2=A0 =C2=A0gdk_cursor_unref (cursor);</div><d=
iv class=3D"gmail_extra">=C2=A0 =C2=A0^</div><div class=3D"gmail_extra">In =
file included from /usr/include/gtk-3.0/gdk/gdk.h:34:0,</div><div class=3D"=
gmail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
from /usr/include/gtk-3.0/gtk/gtk.h:30,</div><div class=3D"gmail_extra">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from screenshot-=
utils.h:4,</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from screenshot-utils.c:2:</div><div class=
=3D"gmail_extra">/usr/include/gtk-3.0/gdk/gdkcursor.h:247:13: note: declare=
d here</div><div class=3D"gmail_extra">=C2=A0void =C2=A0 =C2=A0 =C2=A0 =C2=
=A0gdk_cursor_unref =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (GdkCursor =
=C2=A0 =C2=A0 =C2=A0 *cursor);</div><div class=3D"gmail_extra">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^</div><div class=3D"gmail_extra">scr=
eenshot-utils.c: In function &#39;get_text_property&#39;:</div><div class=
=3D"gmail_extra">screenshot-utils.c:121:3: warning: ignoring return value o=
f &#39;gdk_error_trap_pop&#39;, declared with attribute warn_unused_result =
[-Wunused-result]</div><div class=3D"gmail_extra">=C2=A0 =C2=A0gdk_error_tr=
ap_pop ();</div><div class=3D"gmail_extra">=C2=A0 =C2=A0^</div><div class=
=3D"gmail_extra">=C2=A0 CC =C2=A0 =C2=A0 =C2=A0 screenshot-ui.lo</div><div =
class=3D"gmail_extra">screenshot-ui.c: In function &#39;screenshot&#39;:</d=
iv><div class=3D"gmail_extra">screenshot-ui.c:49:46: warning: &#39;GtkStock=
&#39; is deprecated [-Wdeprecated-declarations]</div><div class=3D"gmail_ex=
tra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 GTK_STOCK_CANCEL, GTK_RESPONSE_REJECT,</div><div class=3D=
"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ^</div><div class=3D"gmail_extra">screenshot-ui=
.c:50:46: warning: &#39;GtkStock&#39; is deprecated [-Wdeprecated-declarati=
ons]</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 GTK_STOCK_SAVE, GTK_RESPON=
SE_ACCEPT,</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">The stock ones look e=
asy to fix, the device ones less so so unless I&#39;m wrong we can leave th=
ose for now.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_=
extra">Ross</div></div></div>

--001a11c30f0ace64030531a18b0f--
