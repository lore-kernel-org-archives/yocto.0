Return-Path: <Aws.Ismail@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE7AEE00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 10:01:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q93H1qvn020840
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 3 Oct 2012 10:01:52 -0700 (PDT)
Received: from [128.224.147.212] (128.224.147.212) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.309.2;
	Wed, 3 Oct 2012 10:01:52 -0700
Message-ID: <506C6F77.504@windriver.com>
Date: Wed, 3 Oct 2012 13:01:43 -0400
From: Aws Ismail <aws.ismail@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <506C6E84.7080201@windriver.com>
In-Reply-To: <506C6E84.7080201@windriver.com>
X-Forwarded-Message-Id: <506C6E84.7080201@windriver.com>
X-Originating-IP: [128.224.147.212]
Subject: [PATCH] psplash: use correct blue offset value for BGR888
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: aws.ismail@windriver.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Oct 2012 17:01:52 -0000
Content-Type: multipart/alternative;
	boundary="------------010005050603040205020409"

--------------010005050603040205020409
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Apologies. Used the wrong subject line. It is corrected now.

Aws\


-------- Original Message --------
Subject: 	[yocto] [PATCH] psplash: Add custom bar image and color options.
Date: 	Wed, 3 Oct 2012 12:57:40 -0400
From: 	Aws Ismail <aws.ismail@windriver.com>
Reply-To: 	<aws.ismail@windriver.com>
Organization: 	Wind River Systems
To: 	<yocto@yoctoproject.org>



I have sent this a about two months ago but did not get a reply.
So I am sending it again to see if anyone has comments on it.

Thanks.

Aws\


-----------------------------------------------------------------
Author: Aws Ismail <aws.ismail@windriver.com>
Date:   Thu Aug 16 11:06:13 2012 -0400

     Use correct blue offset value for BGR888

     fs->blue_offset should be compared to 16 instead
     of 8 in order to detect BGR.

     Credit goes to Ulrich Feichter <u.feichter@avibit.com>
     for detecting this.

     Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
---
  psplash-fb.c |    2 +-
  1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/psplash-fb.c b/psplash-fb.c
index 71740cd..f65d67e 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -185,7 +185,7 @@ psplash_fb_new (int angle)
           fb->rgbmode = RGB888;
    } else if (fb->red_offset == 0 && fb->red_length == 8 &&
        fb->green_offset == 8 && fb->green_length == 8 &&
-      fb->blue_offset == 8 && fb->blue_length == 8) {
+      fb->blue_offset == 16 && fb->blue_length == 8) {
           fb->rgbmode = BGR888;
    } else {
           fb->rgbmode = GENERIC;

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


-- 




--------------010005050603040205020409
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <tt>Apologies. Used the wrong subject line. It is corrected now.<br>
      <br>
      Aws\<br>
    </tt>
    <div class="moz-forward-container"><br>
      <br>
      -------- Original Message --------
      <table class="moz-email-headers-table" border="0" cellpadding="0"
        cellspacing="0">
        <tbody>
          <tr>
            <th align="RIGHT" nowrap="nowrap" valign="BASELINE">Subject:
            </th>
            <td>[yocto] [PATCH] psplash: Add custom bar image and color
              options.</td>
          </tr>
          <tr>
            <th align="RIGHT" nowrap="nowrap" valign="BASELINE">Date: </th>
            <td>Wed, 3 Oct 2012 12:57:40 -0400</td>
          </tr>
          <tr>
            <th align="RIGHT" nowrap="nowrap" valign="BASELINE">From: </th>
            <td>Aws Ismail <a class="moz-txt-link-rfc2396E" href="mailto:aws.ismail@windriver.com">&lt;aws.ismail@windriver.com&gt;</a></td>
          </tr>
          <tr>
            <th align="RIGHT" nowrap="nowrap" valign="BASELINE">Reply-To:
            </th>
            <td><a class="moz-txt-link-rfc2396E" href="mailto:aws.ismail@windriver.com">&lt;aws.ismail@windriver.com&gt;</a></td>
          </tr>
          <tr>
            <th align="RIGHT" nowrap="nowrap" valign="BASELINE">Organization:
            </th>
            <td>Wind River Systems</td>
          </tr>
          <tr>
            <th align="RIGHT" nowrap="nowrap" valign="BASELINE">To: </th>
            <td><a class="moz-txt-link-rfc2396E" href="mailto:yocto@yoctoproject.org">&lt;yocto@yoctoproject.org&gt;</a></td>
          </tr>
        </tbody>
      </table>
      <br>
      <br>
      <pre>I have sent this a about two months ago but did not get a reply.
So I am sending it again to see if anyone has comments on it.

Thanks.

Aws\


-----------------------------------------------------------------
Author: Aws Ismail <a class="moz-txt-link-rfc2396E" href="mailto:aws.ismail@windriver.com">&lt;aws.ismail@windriver.com&gt;</a>
Date:   Thu Aug 16 11:06:13 2012 -0400

    Use correct blue offset value for BGR888

    fs-&gt;blue_offset should be compared to 16 instead
    of 8 in order to detect BGR.

    Credit goes to Ulrich Feichter <a class="moz-txt-link-rfc2396E" href="mailto:u.feichter@avibit.com">&lt;u.feichter@avibit.com&gt;</a>
    for detecting this.

    Signed-off-by: Aws Ismail <a class="moz-txt-link-rfc2396E" href="mailto:aws.ismail@windriver.com">&lt;aws.ismail@windriver.com&gt;</a>
---
 psplash-fb.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/psplash-fb.c b/psplash-fb.c
index 71740cd..f65d67e 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -185,7 +185,7 @@ psplash_fb_new (int angle)
          fb-&gt;rgbmode = RGB888;
   } else if (fb-&gt;red_offset == 0 &amp;&amp; fb-&gt;red_length == 8 &amp;&amp;
       fb-&gt;green_offset == 8 &amp;&amp; fb-&gt;green_length == 8 &amp;&amp;
-      fb-&gt;blue_offset == 8 &amp;&amp; fb-&gt;blue_length == 8) {
+      fb-&gt;blue_offset == 16 &amp;&amp; fb-&gt;blue_length == 8) {
          fb-&gt;rgbmode = BGR888;
   } else {
          fb-&gt;rgbmode = GENERIC;

_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
      <br>
      <pre class="moz-signature" cols="72">-- 

</pre>
      <br>
    </div>
    <br>
  </body>
</html>

--------------010005050603040205020409--
