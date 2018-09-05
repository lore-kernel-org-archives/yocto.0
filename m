Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03305E00A9C; Tue,  4 Sep 2018 19:09:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2FF5E00A54
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 19:09:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w8529n8O020503
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2018 19:09:49 -0700 (PDT)
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 4 Sep 2018 19:09:48 -0700
To: Ravikiran J <ravikiran.j@mistralsolutions.com>, Yocto Project
	<yocto@yoctoproject.org>
References: <CALDHXtdqVcXd5R10DRbnKubFGdvvin-3xQvaVjR=Tmyjh43UEw@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <94ffcf1f-2293-4af0-a903-13f47a7e1bd4@windriver.com>
Date: Wed, 5 Sep 2018 10:14:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CALDHXtdqVcXd5R10DRbnKubFGdvvin-3xQvaVjR=Tmyjh43UEw@mail.gmail.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: Systemd based image freezing issue
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
X-List-Received-Date: Wed, 05 Sep 2018 02:09:56 -0000
Content-Type: multipart/alternative;
	boundary="------------6B94CE133219476686C653BC"

--------------6B94CE133219476686C653BC
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

I just checked out v230 and took a look of the codes.
I think it's the codes below that raise the 'No medium found' error.

src/basic/cgoup-util.c
int cg_unified(void) {
         struct statfs fs;

         /* Checks if we support the unified hierarchy. Returns an
          * error when the cgroup hierarchies aren't mounted yet or we
          * have any other trouble determining if the unified hierarchy
          * is supported. */

         if (unified_cache >= 0)
                 return unified_cache;

         if (statfs("/sys/fs/cgroup/", &fs) < 0)
                 return -errno;

         if (F_TYPE_EQUAL(fs.f_type, CGROUP2_SUPER_MAGIC))
                 unified_cache = true;
         else if (F_TYPE_EQUAL(fs.f_type, TMPFS_MAGIC))
                 unified_cache = false;
         else
                 return -ENOMEDIUM;

         return unified_cache;
}

Please check against your environment/configuration to see why 
/sys/fs/cgroup/ is neither cgroup2 nor tmpfs.

Best Regards,
Chen Qi

On 09/04/2018 10:19 PM, Ravikiran J wrote:
> Dear Yocto team,
>
> We have build the systemd init  based core-image-minimal image in 
> Yocto version 2.2.2  Morty.
> We are getting some systemd init failure with this image in our board.
>
> Following is the failed logs :
> systemd[1]: System time before build time, advancing clock.
> systemd[1]: systemd 230 running in system mode. (-PAM -AUDIT -SELINUX 
> +IMA -APPARMOR +SMACK +SYSVINIT +UTMP -LIBCRYPTSETUP -GCRYPT -GNUTLS 
> +ACL +XZ -LZ4 -SECCOMP +BLKID -ELFUTILS +KMOD -IDN)
> systemd[1]: Detected architecture arm.
>
> Welcome to Poky (Yocto Project Reference Distro) 2.2.2 (morty)!
>
> systemd[1]: Set hostname to <rzn1d400-graco>.
> systemd[1]: Initializing machine ID from random generator.
> systemd[1]: Installed transient /etc/machine-id file.
> systemd[1]: Cannot determine cgroup we are running in: No medium found
> systemd[1]: Failed to allocate manager object: No medium found
> [!!!!!!] Failed to allocate manager object, freezing.
> systemd[1]: Freezing execution.
>
> Kernel (Version 4.9) is build with CGROUPS enable, still it's not 
> helping to initialize properly.
>
> Systemd is enabled through the local.conf file of  the build with 
> following options :
> DISTRO_FEATURES_append = " systemd" VIRTUAL-RUNTIME_init_manager = 
> "systemd" DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit" 
> VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
> Note:
> *Systvinit based core-image-minimal image is working fine in our board.*
> *
> *
> *
> *
> Is there anything else needs to enable on the Linux kernel side and 
> Yocto side build?
> Kindly help us to resolve this issue.
>
>
> Thanks and Regards,
> Ravikiran J J
> *
> *
> *
> *
> *
> *
>
>
>
>
>
>
>
>
>
>
>
>


--------------6B94CE133219476686C653BC
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">I just checked out v230 and took a look
      of the codes. <br>
      I think it's the codes below that raise the 'No medium found'
      error.<br>
      <br>
      src/basic/cgoup-util.c<br>
      int cg_unified(void) {<br>
              struct statfs fs;<br>
      <br>
              /* Checks if we support the unified hierarchy. Returns an<br>
               * error when the cgroup hierarchies aren't mounted yet or
      we<br>
               * have any other trouble determining if the unified
      hierarchy<br>
               * is supported. */<br>
      <br>
              if (unified_cache &gt;= 0)<br>
                      return unified_cache;<br>
      <br>
              if (statfs("/sys/fs/cgroup/", &amp;fs) &lt; 0)<br>
                      return -errno;<br>
      <br>
              if (F_TYPE_EQUAL(fs.f_type, CGROUP2_SUPER_MAGIC))<br>
                      unified_cache = true;<br>
              else if (F_TYPE_EQUAL(fs.f_type, TMPFS_MAGIC))<br>
                      unified_cache = false;<br>
              else<br>
                      return -ENOMEDIUM;<br>
      <br>
              return unified_cache;<br>
      }<br>
      <br>
      Please check against your environment/configuration to see why
      /sys/fs/cgroup/ is neither cgroup2 nor tmpfs.<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 09/04/2018 10:19 PM, Ravikiran J wrote:<br>
    </div>
    <blockquote
cite="mid:CALDHXtdqVcXd5R10DRbnKubFGdvvin-3xQvaVjR=Tmyjh43UEw@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div dir="ltr">
          <div>Dear Yocto team,</div>
          <div><br>
          </div>
          <div>We have build the systemd init  based core-image-minimal 
            image in Yocto version 2.2.2  Morty.</div>
          <div>We are getting some systemd init failure with this image
            in our board.</div>
          <div><br>
          </div>
          <div>Following is the failed logs : <br>
          </div>
          <div><span style="color:rgb(0,0,0)">systemd[1]: System time
              before build time, advancing clock.<br>
              <span style="color:rgb(255,0,0)">systemd[1]: systemd 230
                running in system mode. (-PAM -AUDIT -SELINUX +IMA
                -APPARMOR +SMACK +SYSVINIT +UTMP -LIBCRYPTSETUP -GCRYPT
                -GNUTLS +ACL +XZ -LZ4 -SECCOMP +BLKID -ELFUTILS +KMOD
                -IDN)</span><br>
              systemd[1]: Detected architecture arm.<br>
              <br>
              Welcome to Poky (Yocto Project Reference Distro) 2.2.2
              (morty)!<br>
              <br>
              systemd[1]: Set hostname to &lt;rzn1d400-graco&gt;.<br>
              systemd[1]: Initializing machine ID from random generator.<br>
              systemd[1]: Installed transient /etc/machine-id file.<br>
              <span style="color:rgb(255,0,0)">systemd[1]: Cannot
                determine cgroup we are running in: No medium found<br>
                systemd[1]: Failed to allocate manager object: No medium
                found<br>
                [!!!!!!] Failed to allocate manager object, freezing.<br>
                systemd[1]: Freezing execution.</span></span></div>
          <div><br>
          </div>
          <div>Kernel (Version 4.9) is build with CGROUPS enable, still
            it's not helping to initialize properly.</div>
          <div><br>
          </div>
          <div>Systemd is enabled through the local.conf file of  the
            build with following options : </div>
          <div>
            <pre><span style="font-family:arial,helvetica,sans-serif">DISTRO_FEATURES_append = " systemd"
VIRTUAL-RUNTIME_init_manager = "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
</span>
</pre>
            Note: <br>
          </div>
          <div><b>Systvinit based core-image-minimal image is working
              fine in our board.</b></div>
          <div><b><br>
            </b></div>
          <div><b><br>
            </b></div>
          <div>Is there anything else needs to enable on the Linux
            kernel side and Yocto side build?<br>
          </div>
          <div>Kindly help us to resolve this issue.</div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>Thanks and Regards,</div>
          <div>Ravikiran J J<br>
          </div>
          <div><b><br>
            </b></div>
          <div><b><br>
            </b></div>
          <div><b><br>
            </b></div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div> <br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------6B94CE133219476686C653BC--
