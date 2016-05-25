Return-Path: <prvs=946f89120=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AC40E00CD3; Wed, 25 May 2016 01:00:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.230.2.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 25 May 2016 01:00:40 PDT
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A77D3E00CC5
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 01:00:40 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2CpBACcWkVX/0oKEKxbhQoGt2uCHYF2hhECgXISAQEBAQEBAYEMhEMBAQEDAScLAVYLDQEKCSUPAkYGAQwGAgKII8RuAQEBBwIlhieETIoZBYgEkDOBVo4zhE+DCReFRI9MJw2EHWyJCH8BAQE
X-IPAS-Result: A2CpBACcWkVX/0oKEKxbhQoGt2uCHYF2hhECgXISAQEBAQEBAYEMhEMBAQEDAScLAVYLDQEKCSUPAkYGAQwGAgKII8RuAQEBBwIlhieETIoZBYgEkDOBVo4zhE+DCReFRI9MJw2EHWyJCH8BAQE
To: Julien Gueytat <contact@jgueytat.fr>, <yocto@yoctoproject.org>
References: <1463939183-14049-1-git-send-email-contact@jgueytat.fr>
From: Richard Leitner <richard.leitner@skidata.com>
Message-ID: <57455B94.10500@skidata.com>
Date: Wed, 25 May 2016 10:00:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.8.0
MIME-Version: 1.0
In-Reply-To: <1463939183-14049-1-git-send-email-contact@jgueytat.fr>
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: Re: [psplash][PATCH] Add fbdev option to set the proper /dev/fbX.
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
X-List-Received-Date: Wed, 25 May 2016 08:00:43 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

Hi Julien,
comments on the code are below.
On 05/22/2016 07:46 PM, Julien Gueytat wrote:
> It works exactly the same way than the angle parameter:
>  * --angle <-> /etc/rotation file
>  * --fbdev <-> /etc/fbdev file
> 
> Signed-off-by: Julien Gueytat <contact@jgueytat.fr>
> ---
>  psplash-fb.c | 16 ++++++++++------
>  psplash-fb.h |  4 ++--
>  psplash.c    | 57 ++++++++++++++++++++++++++++++++-------------------------
>  3 files changed, 44 insertions(+), 33 deletions(-)
> 
> diff --git a/psplash-fb.c b/psplash-fb.c
> index 8daaf6f..d344e5a 100644
> --- a/psplash-fb.c
> +++ b/psplash-fb.c
> @@ -99,18 +99,20 @@ attempt_to_change_pixel_format (PSplashFB *fb,
>  }
>  
>  PSplashFB*
> -psplash_fb_new (int angle)
> +psplash_fb_new (int angle, int fbdev_id)
>  {
>    struct fb_var_screeninfo fb_var;
>    struct fb_fix_screeninfo fb_fix;
>    int                      off;
> -  char                    *fbdev;
> +  char                     fbdev[9] = "/dev/fb0";
>  
>    PSplashFB *fb = NULL;
>  
> -  fbdev = getenv("FBDEV");
> -  if (fbdev == NULL)
> -    fbdev = "/dev/fb0";
> +  if (fbdev_id > 0 && fbdev_id < 10)
> +    {
> +        // Conversion from integer to ascii.
> +        fbdev[7] = fbdev_id + 48;
> +    }

You removed the possiblity to get the fb device from FBDEV!
Please don't to that as people may rely on that feature!

If you like to add a fbdev commandline option make sure it can co-exist
with the already available methods for setting this option.
And don't forget to add documentation!

>  
>    if ((fb = malloc (sizeof(PSplashFB))) == NULL)
>      {

...

> @@ -205,35 +205,41 @@ int
>  main (int argc, char** argv) 
>  {
>    char      *tmpdir;
> -  int        pipe_fd, i = 0, angle = 0, ret = 0;
> +  int        pipe_fd, i = 0, angle = 0, fbdev_id = 0, ret = 0;
>    PSplashFB *fb;
>    bool       disable_console_switch = FALSE;
> -  
> +
>    signal(SIGHUP, psplash_exit);
>    signal(SIGINT, psplash_exit);
>    signal(SIGQUIT, psplash_exit);
>  
> -  while (++i < argc)
> -    {
> -      if (!strcmp(argv[i],"-n") || !strcmp(argv[i],"--no-console-switch"))
> -        {
> -	  disable_console_switch = TRUE;
> -	  continue;
> -	}
> +  while (++i < argc) {
> +    if (!strcmp(argv[i],"-n") || !strcmp(argv[i],"--no-console-switch"))
> +      {
> +        disable_console_switch = TRUE;
> +        continue;
> +      }
> +
> +    if (!strcmp(argv[i],"-a") || !strcmp(argv[i],"--angle"))
> +      {
> +        if (++i >= argc) goto fail;
> +        angle = atoi(argv[i]);
> +        continue;
> +      }
> +
> +    if (!strcmp(argv[i],"-f") || !strcmp(argv[i],"--fbdev"))
> +      {
> +        if (++i >= argc) goto fail;
> +        fbdev_id = atoi(argv[i]);
> +        continue;
> +      }
>  
> -      if (!strcmp(argv[i],"-a") || !strcmp(argv[i],"--angle"))
> -        {
> -	  if (++i >= argc) goto fail;
> -	  angle = atoi(argv[i]);
> -	  continue;
> -	}
> -      
>      fail:
>        fprintf(stderr, 
> -	      "Usage: %s [-n|--no-console-switch][-a|--angle <0|90|180|270>]\n", 
> -	      argv[0]);
> +              "Usage: %s [-n|--no-console-switch][-a|--angle <0|90|180|270>][-f|--fbdev <0..9>]\n", 
> +              argv[0]);
>        exit(-1);
> -    }
> +  }

Please use the same coding style everywhere in psplash.

Furthermore please avoid/remove trailing whitespaces in new/changed code

>  
>    tmpdir = getenv("TMPDIR");
>  
> @@ -245,10 +251,10 @@ main (int argc, char** argv)
>    if (mkfifo(PSPLASH_FIFO, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP))
>      {
>        if (errno!=EEXIST) 
> -	{
> -	  perror("mkfifo");
> -	  exit(-1);
> -	}
> +	    {
> +	      perror("mkfifo");
> +	      exit(-1);
> +	    }
>      }

This change is irrelevant for new fbdev option.
Please send this whitespace fix as a separate patch.

>  
>    pipe_fd = open (PSPLASH_FIFO,O_RDONLY|O_NONBLOCK);
> @@ -262,10 +268,11 @@ main (int argc, char** argv)
>    if (!disable_console_switch)
>      psplash_console_switch ();
>  
> -  if ((fb = psplash_fb_new(angle)) == NULL) {
> +  if ((fb = psplash_fb_new(angle,fbdev_id)) == NULL)
> +    {
>  	  ret = -1;
>  	  goto fb_fail;
> -  }
> +    }
>  
>    /* Clear the background with #ecece1 */
>    psplash_fb_draw_rect (fb, 0, 0, fb->width, fb->height,
> 

IMHO in this case fixing the whitespace is fine because the if clause
needs to be adopted for the new option.

