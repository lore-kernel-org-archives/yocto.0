Return-Path: <stefano.cordibella@edalab.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC1D0E00BA0; Wed,  9 Mar 2016 03:15:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from smtpdg227.aruba.it (smtpdg227.aruba.it [62.149.158.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BA39E00948
	for <yocto@yoctoproject.org>; Wed,  9 Mar 2016 03:15:07 -0800 (PST)
Received: from [157.27.224.72] ([157.27.224.72])
	by smtpcmd03.ad.aruba.it with bizsmtp
	id TnF01s01C1aLQ4l01nF2yZ; Wed, 09 Mar 2016 12:15:05 +0100
To: yocto@yoctoproject.org
References: <mailman.9.1457467201.9611.yocto@yoctoproject.org>
From: Stefano Cordibella <stefano.cordibella@edalab.it>
Message-ID: <56E005B3.5040603@edalab.it>
Date: Wed, 9 Mar 2016 12:14:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <mailman.9.1457467201.9611.yocto@yoctoproject.org>
Subject: Re: Image SDK with qmake
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
X-List-Received-Date: Wed, 09 Mar 2016 11:15:12 -0000
Content-Type: multipart/alternative;
	boundary="------------010908000305000103070704"

--------------010908000305000103070704
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Christian,
     thank you for your help, it works!

A user asked a similar question on the toradex community developer and I 
shared your solution, I hope you don't mind.

Thank you again,
Stefano.

On 08/03/2016 21:00, yocto-request@yoctoproject.org wrote:
> Date: Tue, 08 Mar 2016 19:52:50 +0100
> From: Christian Ege<k4230r6@gmail.com>
> To:<yocto@yoctoproject.org>
> Subject: Re: [yocto] Image SDK with qmake
> Message-ID:
> 	<153579313d0.27ac.b5f386b42cd5ccf91b9cb7358bc3020d@gmail.com>
> Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
>
> Hi Stefano,
>
>
> Am 8. M?rz 2016 3:55:09 nachm. schrieb Stefano Cordibella
> <stefano.cordibella@edalab.it>:
>
>> >Hi list,
>> >      I am working on an image that use Qt5 and now I want to share an
>> >SDK with some of our developers.
>> >
>> >When I try to generate the SDK with bitbake -c populate_sdk
>> ><image_name>  there isn't a cross qmake in the generated SDK.
>> >On the other hand when I try to use bitbake meta-toolchain-qt5 some
>> >image libraries and tools are missing on the SDK.
>> >
> Have you put this in your image?
> inherit populate_sdk_qt5
>
> Like I did for meta-udoo
> https://github.com/graugans/meta-udoo/blob/jethro/qt5-layer/recipes-qt/images/udoo-image-qt5.bb
>
> Best,
> Christian
>
>> >I read about Qt5 and SDK in the meta-qt5 wiki, but I suppose that the
>> >related patch is integrated in the fido release that I am using.
>> >
>> >So the question is: are there any way to generate a complete SDK with
>> >Qt5 cross tools for my custom image? I have to add some sort on
>> >nativesdk qt5 package to my image in IMAGE_INSTALL ?
>> >
>> >Thank you in advance,
>> >Stefano.
>> >
>> >--
>> >*Stefano Cordibella*
>> >EDALab s.r.l. - Networked Embedded Systems
>> >
>> >Strada Le Grazie, 15 - 37134 Verona - Italy
>> >email :stefano.cordibella@edalab.it
>> >skype : stefano.cordibella
>> >tel. : +39 045 802 70 85
>> >web :www.edalab.it
>> >
>> >
>> >
>> >----------
>> >--


-- 
*Stefano Cordibella*
EDALab s.r.l. - Networked Embedded Systems

Strada Le Grazie, 15 - 37134 Verona - Italy
email : stefano.cordibella@edalab.it
skype : stefano.cordibella
tel. : +39 045 802 70 85
web : www.edalab.it

--------------010908000305000103070704
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Hi Christian,<br>
          thank you for your help, it works!<br>
      <br>
      A user asked a similar question on the toradex community developer
      and I shared your solution, I hope you don't mind.<br>
      <br>
      Thank you again,<br>
      Stefano.<br>
      <br>
      On 08/03/2016 21:00, <a class="moz-txt-link-abbreviated" href="mailto:yocto-request@yoctoproject.org">yocto-request@yoctoproject.org</a> wrote:<br>
    </div>
    <blockquote
      cite="mid:mailman.9.1457467201.9611.yocto@yoctoproject.org"
      type="cite">
      <pre wrap="">Date: Tue, 08 Mar 2016 19:52:50 +0100
From: Christian Ege <a moz-do-not-send="true" class="moz-txt-link-rfc2396E" href="mailto:k4230r6@gmail.com">&lt;k4230r6@gmail.com&gt;</a>
To: <a moz-do-not-send="true" class="moz-txt-link-rfc2396E" href="mailto:yocto@yoctoproject.org">&lt;yocto@yoctoproject.org&gt;</a>
Subject: Re: [yocto] Image SDK with qmake
Message-ID:
	<a moz-do-not-send="true" class="moz-txt-link-rfc2396E" href="mailto:153579313d0.27ac.b5f386b42cd5ccf91b9cb7358bc3020d@gmail.com">&lt;153579313d0.27ac.b5f386b42cd5ccf91b9cb7358bc3020d@gmail.com&gt;</a>
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"

Hi Stefano,


Am 8. M?rz 2016 3:55:09 nachm. schrieb Stefano Cordibella 
<a moz-do-not-send="true" class="moz-txt-link-rfc2396E" href="mailto:stefano.cordibella@edalab.it">&lt;stefano.cordibella@edalab.it&gt;</a>:

</pre>
      <blockquote type="cite" style="color: #000000;">
        <pre wrap=""><span class="moz-txt-citetags">&gt; </span>Hi list,
<span class="moz-txt-citetags">&gt; </span>     I am working on an image that use Qt5 and now I want to share an
<span class="moz-txt-citetags">&gt; </span>SDK with some of our developers.
<span class="moz-txt-citetags">&gt;</span>
<span class="moz-txt-citetags">&gt; </span>When I try to generate the SDK with bitbake -c populate_sdk
<span class="moz-txt-citetags">&gt; </span>&lt;image_name&gt;  there isn't a cross qmake in the generated SDK.
<span class="moz-txt-citetags">&gt; </span>On the other hand when I try to use bitbake meta-toolchain-qt5 some
<span class="moz-txt-citetags">&gt; </span>image libraries and tools are missing on the SDK.
<span class="moz-txt-citetags">&gt;</span>
</pre>
      </blockquote>
      <pre wrap="">Have you put this in your image?
inherit populate_sdk_qt5

Like I did for meta-udoo
<a moz-do-not-send="true" class="moz-txt-link-freetext" href="https://github.com/graugans/meta-udoo/blob/jethro/qt5-layer/recipes-qt/images/udoo-image-qt5.bb">https://github.com/graugans/meta-udoo/blob/jethro/qt5-layer/recipes-qt/images/udoo-image-qt5.bb</a>

Best,
Christian

</pre>
      <blockquote type="cite" style="color: #000000;">
        <pre wrap=""><span class="moz-txt-citetags">&gt; </span>I read about Qt5 and SDK in the meta-qt5 wiki, but I suppose that the
<span class="moz-txt-citetags">&gt; </span>related patch is integrated in the fido release that I am using.
<span class="moz-txt-citetags">&gt;</span>
<span class="moz-txt-citetags">&gt; </span>So the question is: are there any way to generate a complete SDK with
<span class="moz-txt-citetags">&gt; </span>Qt5 cross tools for my custom image? I have to add some sort on
<span class="moz-txt-citetags">&gt; </span>nativesdk qt5 package to my image in IMAGE_INSTALL ?
<span class="moz-txt-citetags">&gt;</span>
<span class="moz-txt-citetags">&gt; </span>Thank you in advance,
<span class="moz-txt-citetags">&gt; </span>Stefano.
<span class="moz-txt-citetags">&gt;</span>
<span class="moz-txt-citetags">&gt; </span>--
<span class="moz-txt-citetags">&gt; </span><b class="moz-txt-star"><span class="moz-txt-tag">*</span>Stefano Cordibella<span class="moz-txt-tag">*</span></b>
<span class="moz-txt-citetags">&gt; </span>EDALab s.r.l. - Networked Embedded Systems
<span class="moz-txt-citetags">&gt;</span>
<span class="moz-txt-citetags">&gt; </span>Strada Le Grazie, 15 - 37134 Verona - Italy
<span class="moz-txt-citetags">&gt; </span>email : <a moz-do-not-send="true" class="moz-txt-link-abbreviated" href="mailto:stefano.cordibella@edalab.it">stefano.cordibella@edalab.it</a>
<span class="moz-txt-citetags">&gt; </span>skype : stefano.cordibella
<span class="moz-txt-citetags">&gt; </span>tel. : +39 045 802 70 85
<span class="moz-txt-citetags">&gt; </span>web : <a moz-do-not-send="true" class="moz-txt-link-abbreviated" href="http://www.edalab.it">www.edalab.it</a>
<span class="moz-txt-citetags">&gt;</span>
<span class="moz-txt-citetags">&gt;</span>
<span class="moz-txt-citetags">&gt;</span>
<span class="moz-txt-citetags">&gt; </span>----------
<span class="moz-txt-citetags">&gt; </span>--</pre>
      </blockquote>
    </blockquote>
    <br>
    <br>
    <div class="moz-signature">-- <br>
      <meta http-equiv="content-type" content="text/html;
        charset=windows-1252">
      <title></title>
      <div class="moz-signature"> <b>Stefano Cordibella</b><br>
        EDALab s.r.l. - Networked Embedded Systems<br>
        <br>
        Strada Le Grazie, 15 - 37134 Verona - Italy<br>
        email : <a class="moz-txt-link-abbreviated" href="mailto:stefano.cordibella@edalab.it">stefano.cordibella@edalab.it</a><br>
        skype : stefano.cordibella<br>
        tel. : +39 045 802 70 85<br>
        web : <a class="moz-txt-link-abbreviated" href="http://www.edalab.it">www.edalab.it</a><br>
      </div>
    </div>
  </body>
</html>

--------------010908000305000103070704--
