Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 557AFE007DA; Fri, 25 May 2018 06:18:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54EA8E007AD
	for <yocto@yoctoproject.org>; Fri, 25 May 2018 06:18:47 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id t133-v6so928403oif.10
	for <yocto@yoctoproject.org>; Fri, 25 May 2018 06:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=HXVum7O/N/FFNxztuPalYEygYB9rZUyMSx5r/Ddh1uE=;
	b=EYCWYxZUe/91QwSOlYmhtfVD1Yfdux54+5STHez5ARZ4G3GvYDnqQ9simgwTOmyHXf
	x8krHwx6tkbzUKifiy/JVVep3BJ0EIoT4b0pJ+UD+HWdSnUBRdq4fWJyz+AJ+JWdcQUM
	PxJXbTA3TytWzZ+8+ehoRTz0RKpurXTLztnxe2nkfFrAtQ1zP24y5JhQSZAPNNtD+4AL
	y8muC9nRvz2HgEPd3kbnzHyktVzRbn3iZVyLXdiLt2s6F5pFG0jmHth2fgnxVHNqHYld
	1wluLkpGD98pQ2DKAFV3yT82+9ap9WCUYU5y3a7UZWfsm8ud7Mjvrh9vTIjUBRigXyQA
	JCjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=HXVum7O/N/FFNxztuPalYEygYB9rZUyMSx5r/Ddh1uE=;
	b=gQL+dpNfFEig+v6WowsUTxz++Bc/VTzyIg27yOmj341iMGFnXFETxexkmyIUCPiU52
	QVV9hKu8UWaFA5Jl69pYHPY1nCWKpI3flP3PeRA7/D9NhH3noOhvijM/UQJDuROo8v46
	F+T1sdVmWMEsBgK8QZ+p5F0u/7oETtGEc1GquPzM9eydLGtS03mOCOR+9cloAnG9VXqj
	sAjrRY4Cqeso/s1iaEG9r+mtTF/VEuPY9zjZNhonknA+mNgfO5PSjJKxEFUHJpAAQyn2
	ARMq3+C5/++wjZjWHucc/6SAvErdJzGf5BRcvcofTfTu6E+SwQU8HPI+/BCxXHx+0qRv
	jaXQ==
X-Gm-Message-State: ALKqPwcT7X5xtpvJ7I7YUwg97TmDbBbEo0GfmX/dyah8CjNzsVL3MH+H
	5WyzaluC9uQV1DG1y0bSYxv5gxeBJNv65nYkB24=
X-Google-Smtp-Source: AB8JxZqtgtNgcJM1h+uTFQ0Zskw3yQ81Aty0x8hR6aeQXFZCcXdTx1DMJyWXIcE/8LIBD4Tqw7iuejygAscUWUrnJjU=
X-Received: by 2002:aca:478b:: with SMTP id
	u133-v6mr1356636oia.45.1527254327279; 
	Fri, 25 May 2018 06:18:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAJqXeOwTyTasp31EapH2jO8WFmY-Tz-CjDp2CAUpcs=3Dxsqhg@mail.gmail.com>
In-Reply-To: <CAJqXeOwTyTasp31EapH2jO8WFmY-Tz-CjDp2CAUpcs=3Dxsqhg@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 25 May 2018 06:18:36 -0700
Message-ID: <CAFNP8Os4zOcGhTU7EV8_YrWFu=8-jPLqTMvb+VQgN6BhgN9FDw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto
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
X-List-Received-Date: Fri, 25 May 2018 13:18:49 -0000
Content-Type: multipart/alternative; boundary="000000000000a8c3e1056d079b55"

--000000000000a8c3e1056d079b55
Content-Type: text/plain; charset="UTF-8"

Hi Nikhil,

I am forwarding your email to the Yocto Project email group.  Someone there
can better help you with your questions.  I take care of the Yocto manual
set.

Thanks,
Scott Rifenbark

---------- Forwarded message ---------
From: nikh kkvv <nikhkkv@gmail.com>
Date: Fri, May 25, 2018, 6:03 AM
Subject: Yocto
To: <srifenbark@gmail.com>


Hi srifenbark,


I am Nikhil working as soft ware engineer in kerala.

Currently i am working with a project which require yocto based file system.
I am using sama5d36-xplained evaluation kit.

Based on the information from the following site
http://www.at91.com/linux4sam/bin/view/Linux4SAM/YoctoProject build a file
system which support qt images and tested successfully.

Is there any way to  avoid this demo images from this build and add qt
support for bitbake core-image minimal process.


Regards
Nikhil

--000000000000a8c3e1056d079b55
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Nikhil,</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">I am forwarding your email to the Yocto Project email group.=C2=
=A0 Someone there can better help you with your questions.=C2=A0 I take car=
e of the Yocto manual set.</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">Thanks,</div><div dir=3D"auto">Scott Rifenbark<br><br><div class=3D"gmai=
l_quote" dir=3D"auto"><div dir=3D"ltr">---------- Forwarded message -------=
--<br>From: nikh kkvv &lt;<a href=3D"mailto:nikhkkv@gmail.com">nikhkkv@gmai=
l.com</a>&gt;<br>Date: Fri, May 25, 2018, 6:03 AM<br>Subject: Yocto<br>To: =
 &lt;<a href=3D"mailto:srifenbark@gmail.com">srifenbark@gmail.com</a>&gt;<b=
r></div><br><br><div dir=3D"ltr"><div>Hi srifenbark,</div><div><br></div><d=
iv><br></div><div>I am Nikhil working as soft ware engineer in kerala.</div=
><div><br></div><div>Currently i am working with a project which require yo=
cto based file system.</div><div>I am using sama5d36-xplained evaluation ki=
t.</div><div><br></div><div>Based on the information from the following sit=
e <br></div><div><a href=3D"http://www.at91.com/linux4sam/bin/view/Linux4SA=
M/YoctoProject" target=3D"_blank" rel=3D"noreferrer">http://www.at91.com/li=
nux4sam/bin/view/Linux4SAM/YoctoProject</a> build a file system which suppo=
rt qt images and tested successfully.<br></div><div><br></div><div>Is there=
 any way to=C2=A0 avoid this demo images from this build and add qt support=
 for bitbake core-image minimal process.</div><div><br></div><div><br></div=
><div>Regards</div><div>Nikhil<br></div></div>
</div></div></div>

--000000000000a8c3e1056d079b55--
