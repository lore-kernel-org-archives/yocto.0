Return-Path: <jc@vtkloud.com>
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67B99E01415
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 00:55:23 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id c10so1457840wiw.14
	for <yocto@yoctoproject.org>; Thu, 05 Sep 2013 00:55:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type;
	bh=uTRaFjyTY/AOfDzuFSyblNizj/a6IvhvE42zL2f42pE=;
	b=VjgENi6+mnXGxhESfaljp/dkn7akHDSZt6q7gf1Fl7dxNYTtktXxSnqa5EdSAONyoD
	EkYCflPziBp/LT9oM/aOh7cRmFhG4tB/HrtvSvL8gQ1KH0ZAE3YM7Zt2MA50HqagtIvh
	oN7sCDzYaa34eSC3aHi1gjKg/xLdhm7delummnNMuMsgVhfaRI0DSSLg9NrjLiaBSCum
	9A09IGRkkd9wKGDn7LB0/8U/DRkomvkLCw/AneFosBQ7A1afuPL+3yc0FrqNcHNO8sqJ
	yDYO0rGvrqVm21CQ4sFu+tDzpHdYdTBnmJmtUJkMl4Bk+RVxUbUKJWNjAi/lJU6fYmmi
	kdrg==
X-Gm-Message-State: ALoCoQmWjtdphEV83mbs7aCb5txPGtHyNnNpF6VvVMbwBsyiHp8AgcAXya6xB7bxb6VFnrIGzYDN
X-Received: by 10.180.100.202 with SMTP id fa10mr5226612wib.8.1378367722684;
	Thu, 05 Sep 2013 00:55:22 -0700 (PDT)
Received: from [172.24.63.121] ([94.103.137.126])
	by mx.google.com with ESMTPSA id dr11sm9602595wid.3.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 05 Sep 2013 00:55:21 -0700 (PDT)
Message-ID: <522838E7.1060007@vtkloud.com>
Date: Thu, 05 Sep 2013 09:55:19 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Paul Barker <paul@paulbarker.me.uk>
References: <5227629A.5090505@vtkloud.com> <52276400.6070307@mlbassoc.com>
	<522830FF.6090100@vtkloud.com>
	<CANyK_8fN2_OYy6nRvud7udkS0Sp+gqWkaO7xHvJ9X5mZJ-ZC5Q@mail.gmail.com>
In-Reply-To: <CANyK_8fN2_OYy6nRvud7udkS0Sp+gqWkaO7xHvJ9X5mZJ-ZC5Q@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: raspberry layer
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
X-List-Received-Date: Thu, 05 Sep 2013 07:55:24 -0000
X-Groupsio-MsgNum: 15864
Content-Type: multipart/mixed; boundary="------------050401090109020509070002"

--------------050401090109020509070002
Content-Type: multipart/alternative;
 boundary="------------090808040108000606050807"

--------------090808040108000606050807
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 05/09/2013 09:31, Paul Barker wrote:
> That looks like a parse error so the full log shouldn't be very long 
> as that point, may be helpful to post it. 

I attached rpibuild.log to this email

>> my local.conf changes: just added raspberrypi machine
>> bblayers.conf:
>> added
>>    /media/yocto/yocto/openembedded-core/meta \
>>    /media/yocto/yocto/meta-raspberrypi \
>>
> The README in meta-raspberrypi states that you need meta-openembedded
> as well (specifically, the meta-oe layer). I'm not sure that this is
> the cause of your error though.

Sorry, it is indeed added (otherwise it complains about mesa, anyway)

> What branches of the different layers are you using? I just want to
> make sure they're all the same. Also, what version or branch of
> bitbake are you using?
>


As a reference, following this link 
http://www.pimpmypi.com/blog/blogPost.php?blogPostID=7 I got successful 
(well the image is not yet finished but I hadn't that specific parsing 
error)

I followed the exact README steps in a fresh directory for the checkout, 
so I am on the trunk for poky & meta-raspberrypi...

Jay




--------------090808040108000606050807
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Hi,<br>
      <br>
      On 05/09/2013 09:31, Paul Barker wrote:<br>
    </div>
    <blockquote
cite="mid:CANyK_8fN2_OYy6nRvud7udkS0Sp+gqWkaO7xHvJ9X5mZJ-ZC5Q@mail.gmail.com"
      type="cite"> That looks like a parse error so the full log
      shouldn't be very long as that point, may be helpful to post it. </blockquote>
    <br>
    I attached rpibuild.log to this email<br>
    <br>
    <blockquote
cite="mid:CANyK_8fN2_OYy6nRvud7udkS0Sp+gqWkaO7xHvJ9X5mZJ-ZC5Q@mail.gmail.com"
      type="cite">
      <blockquote type="cite">
        <pre wrap="">my local.conf changes: just added raspberrypi machine
bblayers.conf:
added
  /media/yocto/yocto/openembedded-core/meta \
  /media/yocto/yocto/meta-raspberrypi \

</pre>
      </blockquote>
      <pre wrap="">The README in meta-raspberrypi states that you need meta-openembedded
as well (specifically, the meta-oe layer). I'm not sure that this is
the cause of your error though.</pre>
    </blockquote>
    <br>
    Sorry, it is indeed added (otherwise it complains about mesa,
    anyway)<br>
    <br>
    <blockquote
cite="mid:CANyK_8fN2_OYy6nRvud7udkS0Sp+gqWkaO7xHvJ9X5mZJ-ZC5Q@mail.gmail.com"
      type="cite">
      <pre wrap="">What branches of the different layers are you using? I just want to
make sure they're all the same. Also, what version or branch of
bitbake are you using?

</pre>
    </blockquote>
    <br>
    <br>
    As a reference, following this link
    <meta http-equiv="content-type" content="text/html;
      charset=ISO-8859-1">
    <a href="http://www.pimpmypi.com/blog/blogPost.php?blogPostID=7">http://www.pimpmypi.com/blog/blogPost.php?blogPostID=7</a>
    I got successful (well the image is not yet finished but I hadn't
    that specific parsing error)<br>
    <br>
    I followed the exact README steps in a fresh directory for the
    checkout, so I am on the trunk for poky &amp; meta-raspberrypi...<br>
    <br>
    Jay<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------090808040108000606050807--

--------------050401090109020509070002
Content-Type: text/x-log;
 name="rpibuild.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="rpibuild.log"

ERROR: Error executing a python function in <code>:#                                                                           | ETA:  00:00:57
ExpansionError: Failure expanding variable MAJ_VER, expression was ${@oe.utils.trim_version("2.28.2", 2)} which triggered exception AttributeError: 'module' object has no attribute 'trim_version'

ERROR: The stack trace of python calls that resulted in this exception/failure was:
ERROR:   File "<code>", line 1, in <module>
ERROR: 
ERROR:   File "__anon_637__media_yocto_yocto_poky_meta_classes_base_bbclass", line 169, in __anon_637__media_yocto_yocto_poky_meta_classes_base_bbclass
ERROR: 
ERROR:   File "/media/yocto/yocto/poky/bitbake/lib/bb/data_smart.py", line 503, in getVar
ERROR:     return self.expand(value, var)
ERROR: 
ERROR:   File "/media/yocto/yocto/poky/bitbake/lib/bb/data_smart.py", line 336, in expand
ERROR:     return self.expandWithRefs(s, varname).value
ERROR: 
ERROR:   File "/media/yocto/yocto/poky/bitbake/lib/bb/data_smart.py", line 317, in expandWithRefs
ERROR:     s = __expand_var_regexp__.sub(varparse.var_sub, s)
ERROR: 
ERROR:   File "/media/yocto/yocto/poky/bitbake/lib/bb/data_smart.py", line 97, in var_sub
ERROR:     var = self.d.getVar(key, True)
ERROR: 
ERROR:   File "/media/yocto/yocto/poky/bitbake/lib/bb/data_smart.py", line 503, in getVar
ERROR:     return self.expand(value, var)
ERROR: 
ERROR:   File "/media/yocto/yocto/poky/bitbake/lib/bb/data_smart.py", line 336, in expand
ERROR:     return self.expandWithRefs(s, varname).value
ERROR: 
ERROR:   File "/media/yocto/yocto/poky/bitbake/lib/bb/data_smart.py", line 326, in expandWithRefs
ERROR:     raise ExpansionError(varname, s, exc)
ERROR: 
ERROR: The code that was being executed was:
ERROR:  *** 0001:__anon_637__media_yocto_yocto_poky_meta_classes_base_bbclass(d)
ERROR:      0002:__anon_227__media_yocto_yocto_poky_meta_classes_package_bbclass(d)
ERROR:      0003:__anon_1137__media_yocto_yocto_poky_meta_classes_package_rpm_bbclass(d)
ERROR:      0004:__anon_914__media_yocto_yocto_poky_meta_classes_insane_bbclass(d)
ERROR:      0005:__anon_20__media_yocto_yocto_poky_meta_classes_debian_bbclass(d)
ERROR: [From file: '<code>', lineno: 1, function: <module>]
ERROR:      0165:                elif all_skipped or incompatible_license(d, bad_licenses):
ERROR:      0166:                    bb.debug(1, "SKIPPING recipe %s because it's %s" % (pn, recipe_license))
ERROR:      0167:                    raise bb.parse.SkipPackage("incompatible with license %s" % recipe_license)
ERROR:      0168:
ERROR:  *** 0169:    srcuri = d.getVar('SRC_URI', True)
ERROR:      0170:    # Svn packages should DEPEND on subversion-native
ERROR:      0171:    if "svn://" in srcuri:
ERROR:      0172:        d.appendVarFlag('do_fetch', 'depends', ' subversion-native:do_populate_sysroot')
ERROR:      0173:
ERROR: [From file: '__anon_637__media_yocto_yocto_poky_meta_classes_base_bbclass', lineno: 169, function: __anon_637__media_yocto_yocto_poky_meta_classes_base_bbclass]
ERROR: Failed to parse recipe: /media/yocto/yocto/openembedded-core/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.28.2.bb
ERROR: Command execution failed: Exited with 1



--------------050401090109020509070002--
